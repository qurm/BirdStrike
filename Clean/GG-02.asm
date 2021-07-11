\ GG.asm converted from parts of $.OLDSRCE BIRD DISK Side 1    
\ and missing source "G" obtained from dissassembly of G binary file.
\ (c) Andy Frigaard 1984 to May 2021
\ The GG files were written first (1982-3) baed on $.OLDSRCE and were a playable game with
\ many missing features.  The main loop was overwritten and only the subroutines used.
\ There are some later patches in the SS files.
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains 
\   Setup of Sound envelopes, logical colours
\   Move player gun, move bullets, move planes
\   Move bombs,..
\   Data structures for above, lists, pointers, variables, constants


\\ Define logical colours palette
\\ Calls oswrch
\\ Input: called with X=#15 to 8 :LDY #7 in setup 
\\ Input: called with X=0 Y=0 in gun_hit_display 
.D%                 
.def_log_colour
    LDA #&13
    JSR oswrch          \ Define logical colours OSWRCH &13 and 5 further bytes
    TXA                  
    JSR oswrch
    TYA
    JSR oswrch
    LDA #&00
    JSR oswrch
    JSR oswrch
    JMP oswrch

\\ Define sound envelopes, similar to .env in OLDSRCE
\\ Called from start_game
\\ Calculates LSB of osword 8 call in X based on A at entry, &2D80, .. &2DC0
\\ X = (A * 16) + &70 where 5>=A>0
\\ (Y is not calculated, but should perhaps be something DIV 256)
.E%
.def_envelopes
\envelope_base_addr = &2D80          \ base address &2D80, to &2DCF
    LDA no                      \ 5,4,3,2,1
    ASL A: ASL A: ASL A: ASL A  \ multiply by 16
    ADC #(LO(envelope_base_addr) - &10 )   \orig #&70
    TAX
    LDA #&08                    \ osword define ENVELOPE, &14 bytes at Y,X addr
    LDY #HI(envelope_base_addr)                   \ &2D
    JSR osword
    DEC no              
    BNE def_envelopes
    RTS

.scr                    \ waits for Vsync?
    LDA #&02
    STA &FE4E           \ Interrupt Enable Register
.scri
    BIT &FE4D           \ Interrupt Flag Register
    BEQ scri            \ loop until interrupt
    LDA #&82
    STA &FE4E           \ Interrupt Enable Register
    RTS

\\ Plot score using custom sprites
\\ Input:
\\ A = LSB sprite offset
\\ sf+1 = &1C
\ was .W%                     \ W%=&285A plots some sprite?
.plot_score
{
    STA sf                  \ store offset lsb
    LDY #&0F                \ length 16 bytes
.loop
    LDA (sf),Y: STA (sd),Y
    DEY
    BPL loop           \L285E
    CLC
    LDA sd: ADC #&10
    STA sd
    RTS
}
    EQUB 00 


\\ Move players gun
\\ Called from main loop
\\ No check for collision with bomb
\\ Updates: Xg (x-coord), gunp (screen memory pos)
\\ TODO optimised to only call unplot if is moving
.mg
.move_gun
{
    NOP                                 \ SMC set to RTS to disable
    JSR plot_gun_sprite                 \ unplot 
    LDA #&81:LDY #&FF:LDX #&BD          \ http://beebwiki.mdfs.net/OSBYTE_%2681
    JSR osbyte                          \ check for "X" move right
    INX:BEQ right
    DEY:LDX #&9E:JSR osbyte             \ check for "Z" move left
    INX:BNE gd
.left                                      \ move left 
    LDX Xg:CPX #1:BEQ gd:               \ check limit
    DEX:STX Xg                          \ X coord -1
    \JSR plot_gun_sprite                 \ unplot 
    SEC
    LDA gunp:SBC#8:STA gunp:BCS gd      \ screen memory pos -8
        DEC gunp+1:BCC gd               \ always
.right                                      \ move right 
    LDX Xg:CPX #71:BEQ gd:              \ check right limit
    INX:STX Xg
    \JSR plot_gun_sprite                 \ unplot    
    CLC
    LDA gunp:ADC #8:STA gunp            \ screen memory pos +8
    BCC gd
        INC gunp+1
    
    \LDY #0:LDA(gunp),Y
    \LDY #&18:LDA(gunp),Y
    \LDY #&20:LDA(gunp),Y
                                        \ gun is un-plotted,so screen is clear
.gd
.*player_dies                            \ check collision - any non zero pixels on bottom line.
    LDA#01:BEQ plot_gun_sprite          \if player_dies=1, then check collisions
    SEC:LDA #0:STA pos:LDY #&24        \ clear pos, Y=address index, &24,1C,14,0C,04
.ch 
    LDA(gunp),Y:BEQ cop:STA pos        \ if blank, skip, else store in pos.

.cop 
    TYA:SBC #8:TAY:BPL ch               \ Y=Y-8 loop while Y> 0 
    LDA pos:BEQ plot_gun_sprite         \ if pos=0 skip draw gun, else hit?
    LDA sc:ORA #&20:STA sc              \ sc = score flag - set bit &20, gun was hit.
                                        \ this is detected in gun_hit_display
}

\\ Gun, plot gun sprite XOR, from gunf,Y to (gunp),Y
\\ MODE 2, single line for player gun 
\\ Sprite length cycles 40 bytes, gunf=X_base_addr + &160 to &188
\\ Profiler shows this loop is heaviest cycle count
\\ Preserves X
\\ Constants:
\ \ gunf=&2358 (normal) gunf=&1A60 (explosion)
gun_sprite_length=&27               \ &27=40 bytes
.gun
.plot_gun_sprite
.modify_gun_length                  \ draw the players gun sprite
{
    LDY #gun_sprite_length
.gop                                \ gunf modified to &2358 by .sgun and gun_hit_display
    LDA gunf,Y:BEQ gz               \ load sprite byte, skip XOR drawing for 0
        EOR(gunp),Y
        STA(gunp),Y                 \ XOR draw to screen 
.gz 
    DEY:BPL gop                    \ repeat until Y<0
    RTS             
}

\ bullet list table 
\ bulst[0] = no of bullets x 4 bytes, 8 => 2 bullets
\ each bullet has 4 bytes
\ bulst[0] = exp Y-coord in pixels, starts &9D 175, reduces upwards 5 pixels/cycle
\ bulst[1] = LO addr => sd 
\ bulst[2] = HI addr => sd  
\ bulst[3] = X-coord in pixels flag
\ bfg zp flag, set to 2 intially, AND with &FE for 

\\ Move player bullets
\\ Called from main loop
\\ Inputs buf is sprite source address
\\ Output: zp sf 
.mb
.move_bullets
{
bullet_rate=5                           \ move N pixels/lines per cycle, not changable without other logic changes.
    LDY #0:LDA(bulst),Y:STA no          \ load count of bullets x4 into no 
    LDA buf:STA sf:LDA buf+1:STA sf+1   \ load bullet sprite into sf, sprite from
.ntbu 
    INY:LDA(bulst),Y:STA exp            \ load from bullet list into zero page 
    INY:LDA(bulst),Y:STA sd
    INY:LDA(bulst),Y:STA sd+1:BNE bu1   \ if bulst[2] = 0 then no bullet
        INY:
        LDA #&FE:AND bfg:STA bfg        \ clear bit 0, shows can fire again.
        JMP nxbu
.bu1 
    INY:JSR plot_fast_bullet_sprite             \ XOR undraw plot_bullet_sprite
    LDA(bulst),Y:BPL bu2                   \ if bulst[3] positive, then continue
.bu7 
    LDA#0:STA sd+1:BEQ nxbu   \alws        \ else terminate this bullet, set bulst[2] = 0
.bu2
    LDA sc: BMI nxbu                        \ check for frame end flag - do not redraw this bullet 
    SEC:LDA#7:AND sd:CMP#5:BMI bu3        \ move 5 bytes/pixels up
    LDA sd:SBC#5:STA sd:JMP bu4           \ either 8 bit subract 5, or
.bu3 
    LDA sd:SBC #&7D:STA sd                \ 16 bit subtract &027D, for 1 row
    LDA sd+1:SBC#2:STA sd+1
.bu4 
    SEC:LDA exp:SBC#bullet_rate:STA exp             \ Y-coord - 5
    \BMI bu5
    \CMP #2:BMI bu7                        \ if exp is 2, then hit top?
    CMP #2:BEQ bu7                        \ if exp is 2, then hit top?
.bu5
    JSR plot_fast_bullet_sprite                \ draw plot_bullet_sprite
.nxbu 
    DEY:DEY:DEY
    LDA exp:STA(bulst),Y:                  \ restore from zp to bulst
    INY:LDA sd:  STA(bulst),Y:
    INY:LDA sd+1:STA(bulst),Y
    INY                                     \ no need to save X-coord, unchanged.
    \ CPY no:BMI ntbu                       \ AF 28/6/21
    CPY no:BCC ntbu                         \ if Y<no, then loop
    
    RTS
}

\\ New bullet, nb, player fires?
\\ Called from main loop after Move Bullet
\\ Calls (JSR fpat), s5 plot_bullet_sprite
\\ Inputs
\\ Outputs
\\ Sets values for bulst, bfg, sc (score)
\\TODO is bfg still in use?
\\ seems to have no effect, but can fire again, but no bullet triggered?
.new_bullet
.nb
{
bullet_init_y=&9D                       \ bulst[0] = 9D is y coord, 175 at gun tip, reducing upwards
    NOP                                 \ SMC changed to RTS, &60 in gun_hit_display
    LDA #1
    BIT bfg                             \ test can fire again?  Not used, replaced by fp0 counter?
    BNE nwb0                            \ exit
    LDA #&81:LDY#&FF:LDX#&B6           \ LDX#&B6 to fix player firing  
    JSR osbyte                         \ OSBYTE 129 Read key, keyboard scan for ENTER -74
    INX:BEQ nwb1                        \ if pressed, fire

    LDA #&00:STA fp0                    \ else SMC updates fp0
.nwb0 
    RTS
.fp0 
    EQUB 0                        \ fp0 counter modified below TODO move to ZP

.nwb1 
    LDA fp0:BEQ fp1                 \ decrement counter, return if > 0
        DEC fp0:RTS
.fp1
.*bullet_interval
    LDA #18:STA fp0                 \ reset counter to 18; is modifed for each level 
    LDY #&FF                            \ proceed to fire again
.nwb2 
    INY:INY:INY:INY                     \  Y is 3, 7, 11  TODO DEBUG here; bullet_list 8,12,16
    CPY bullet_list: BCS nwb0           \ Y>=bulst dont search beyond bullet list length
    LDA(bulst),Y:BNE nwb2               \ search for unused list entry, bulst[2] = 0, no check on bounds

    DEY:DEY                             \ Y is 1,5,..
    LDA #bullet_init_y:STA(bulst),Y     \ bulst[0] = 9D is y coord, 175 at gun tip, reducing upwards
    INY:SEC
    LDA gunp:SBC #&6E:STA(bulst),Y      \ 16 bit subtract from gunp bulst[1] = LO
    STA sd                              \ Initial Bullet addr is (gunp-&026E) in bulst[1,2] 
    INY:LDA gunp+1:SBC #2:STA(bulst),Y  \ bulst[2] = HI
    STA sd+1:
    INY:LDA Xg:CLC:ADC #3:STA(bulst),Y   \ Bullet start X coord is (Xg+3) in bulst[3] 
    JSR plot_fast_bullet_sprite               \ first plot_bullet_sprite for new bullet
    LDA #3:ORA bfg:STA bfg               \ set bfg bit 0,1 shows 2 bullets
    LDA #1:ORA sc:STA sc
    LDX #LO(sound_bullet):LDY#HI(sound_bullet)  \ OSWORD - A=7 SOUND command at &2DD0  sound_bullet
    LDA #7:JMP osword
}

\\ s5 Sprite/screen memory movement for bombs, bullets?
\\ uses fast EOR plotting, from sf, to st & sd (across 2 MODE 2 rows) 
\\ Profiler shows this loop is fairly heavy cycle count
\\ TODO - change to 
\\ called from mbo, Move Bombs,  Move player bullets, shared
\\ input is zero-page sd, sf address pointers; Y index
\\ output is zero-page st, address pointers and mod?
\\ Y is preserved because nb uses as loop counter
\\ Profiler shows this loop is fairly heavy cycle count
\\ TODO - change to 
\\ dedicate ZP for table and use LDA(bulst,X)
\\ set Y as parameter
.plot_fast_bullet_sprite
{
    bullet_sprite_length=&05  
    TYA:PHA:                        \ save Y
    LDY #bullet_sprite_length       \ 6 bytes per bullet/bomb
    \LDX #&2A                        \?? temp white
    CLC:
    LDA sd:ADC #&78:STA st:         \ add 1 row, &0278 and store in st
    \LDA sd:ADC #&78:TAX         \ add 1 row, &0278 and store in st
    LDA sd+1:ADC #2:STA st+1
    LDA sd:AND#7:EOR#7:STA comp_mod+1      \ modulo, save a few cycles
    CMP #5:BPL top                  \ if all pixels are in top line, go to top
.bot 
    LDA(st),Y:             \AF optimise?
    EOR#&2A:STA(st),Y
    DEY                 \ Y-1, loop until = mod
.comp_mod
    CPY#&FF:BNE bot          \ SMC -not FF, set above.    
.top 
    LDA(sd),Y:
    EOR#&2A:STA(sd),Y
    DEY:BPL top             \ Y-1, loop until 0
    PLA:TAY:                \ restore Y
    RTS
}


\\ New plane, np, Starts a plane flying from the formation
\\ Determines if level is complete if no planes remaining.
\ pflg = plane flag - where init?
.np
.new_plane
{ 
    plane_max_count=1               \ number flying, was always 1 in original game
    NOP                             \ SMC in gun_hit_display, set to RTS
    LDA pflg                        
    CMP #plane_max_count:BPL no_plane                  \ if any flag bit set, then RTS
    DEC ti:BNE no_plane                   \ ti=ti-1, if timer <> 0 then RTS
    LDA ti+1:STA ti:                \ timer=0 so reset
    LDA no:JSR ra2:TAY:SEC          \ get random
.next_plane2 
    SBC #5:BPL next_plane2:TAX
.next_plane3 
    INY:INX:BNE next_plane3
    DEY:LDA(pls),Y:BMI fly:LDY no   \check psta, plX if bit 7 set then unused, so start flying
.se 
    DEY:LDA(pls),Y:BMI fly           \ Y=Y-1 - if high bit, skip
    DEY:DEY:DEY:DEY:BNE se          \ Y=Y-4, repeat until zero
    LDA #&80:ORA sc:STA sc          \ not found, set sc level is complete
    RTS
.fly 
    EOR #&80:STA(pls),Y             \ XOR high bit, clear it, so set is flying
.no_plane 
    RTS
}

\\ Plane Explosion animation plotting
\\ selects the source sprite into plf, from plane or 
\\  from explosion animation
\\ actual plotting is in JSR pp
\ explosion_sprite_addr  = &1940          \ base for 3 animated sprites &40 long
\ plane_sprite_addr  = &2F00              \ base for 4 levels of plane
.pxp
{
    LDA exp:BEQ nx              \ not explosion
    LDX #HI(explosion_sprite_addr):STX plf+1:         \ set HI plane sprite to explosion 
    LDA plf:PHA:
    LDA exp:CMP #21:BNE px1
    LDA #&40:STA plf:           \ set LO plane sprite 
    JSR pp:JMP reset_sp_addr
.px1 
    \ TODO align to published, as LDA #&40, was LDX #&0
    CMP #12:BNE px2
    LDA #&40:STA plf         \ set LO plane sprite 
    JSR pp:                     \TODO - repeats here?  no px4
    LDA #&80:STA plf         \ set LO plane sprite 
    JSR pp:JMP reset_sp_addr
.px2 
    CMP #6:BNE px3
    LDA #&80:STA plf         \ set LO plane sprite 
    JSR pp
    LDA #&C0:STA plf         \ set LO plane sprite 
    JSR pp:JMP reset_sp_addr
.px3 
    CMP #1:BNE reset_sp_addr
        LDA #&C0:STA plf         \ set LO plane sprite 
        JSR pp
.reset_sp_addr 
    LDA #HI(plane_sprite_addr):STA plf+1          \ restore to plane_sprite_addr
    PLA:STA plf:DEC exp
.nx 
    JMP save_plane                      \ fo plots plane, writes data back to list 
}
\\ End of Plane Explosion plotting

\\ Plane collision detection, check for bullets in sprite rectangle
\\ called from move_plane
\\ preserves Y
\\ returns Carry set if collision; set score flag; store 25 in exp
\\ moved to a sub 9/7/2021
.check_plane_collision
{ 
    TYA:PHA
    LDY #0:LDA(bulst),Y:STA sd              \ no of bullets in list x 4; sd is temp counter
.h
.check_next_plane                                 \ plane hit bullet detection 
    INY
    LDA(bulst),Y:SEC:SBC yo:
    BMI plane_not_hit:                      \ compare Y coord, => "not hit"
    CMP #8:BPL plane_not_hit
    INY:INY
    LDA(bulst),Y:BEQ plane_not_hit+2                   \ if HI is zero, not bullet, => not hit
    INY:LDA(bulst),Y:SEC:SBC psta
    BMI plane_not_hit+3                             \ compare X coord, not hit
    CMP #7:BPL plane_not_hit+3                         \ not hit
    CMP #3:BEQ plane_hit                                    \ yes, within 3 pixels, is hit
    LDA #&40:ORA sc:STA sc
    ASLA:STA(bulst),Y:BNE plane_not_hit+3           \ always
\.o
.plane_hit 
    LDA #25:STA exp                     \ plane is hit, sound, clear bullet, score, etc
    LDA #LO(sound_plane_hit)
    STA(bulst),Y:TAX                    \ indirect way to LDX #LO(sound_plane_hit), store &D8 in bulst to show hit.
    LDY #HI(sound_plane_hit)   
    LDA #7:JSR osword                   \ OSWORD - A=7 SOUND command at &2DD8 sound_plane_hit
    LDA #2:ORA sc:STA sc
    PLA:TAY
    SEC                 \ SEC => hit
    RTS

.plane_not_hit 
    INY:INY:INY                        \ plane not hit
    CPY sd:BCC check_next_plane          \ Y < sd, so loop AF 28/06/2021 BCC unsigned
    PLA:TAY
    CLC
    RTS
    \\ end plane hit bullet detection 
}

\\ Plane lists
\\ |?0| 1| 2| 3| | | | | |          \ pos, pos+1
\\ |LO|HI|LO|HI|LO|HI|LO|HI         
\\ |?0| 1| 2| 3| | | | | |          \ bomb_lower_addr in ZP
\\ |LO|HI|LO|HI|LO|HI|LO|HI   
\\ |00| 1| 2| 3| | | | | |          \ bomb_y    Y coord, 160 rows, 0 is top
\\ | X| Y| X| Y|                    \ psta  X coord
\\ |00| 1| 2| 3| | | | | |          \ ? any other status byte?
\\ | S| S| S|

\\ plfg no of flying planes
\\ move_planes: starts as 0, then +1 for each plane
\\ new+plane: when set to 0 => new plane will start


\exp=&77:        \ plane list 1st element
\pos=&78:        \ temp position, used in .mg (move gun), pp plot plane address 
\psta=&7A:       \ plane list 4th element
\yo=&7B          \ plane list 5th element

\\ psta  bit 7 set when flying, low bits are X-coord 0 to 80

\\ Move plane
\\ Logic for random Left/Right and following player
\\ Calls pxp, pp to determine sprite and plot
\\ TODO - not efficient to copy all to zp if not moving this plane
\\ TODo - plane stil moves after explosion - more realistic?
.mp
.move_planes
{ 
    LDY #0:LDA(pls),Y:STA no:STY pflg           \ initial plfg=0, then INC if flying
.nxpl 
    INY:LDA(pls),Y:STA exp                      \ load plane values to zero page
    INY:LDA(pls),Y:STA pos
    INY:LDA(pls),Y:STA pos+1
    INY:LDA(pls),Y:STA psta
    INY:LDA(pls),Y:STA yo
    LDA exp:AND #&C0:BNE no_explosion            \ check for explosion
        JMP pxp                                  \ un-plot plane explosion, remove prior to move
.no_explosion 
    LDA psta:BPL plane_flying
        JMP pl1                                 \ psta plane status not active, JMP next plane
.plane_flying
    DEC exp                                 \ dec explosion counter  TODO multiple planes, need multiple.
    JSR pp                              \ un-plot plane
    JSR check_plane_collision
    BCC plane_not_hit                   \ if Carry set, then hit
        JMP pxp                         \ plane hit, plot first expl and exit
                                        \ skips all the movement - can check explo
.plane_not_hit
    LDA bofg:AND #&BF:STA bofg          \ clear bit 6 on bofg - indicates plane is flying, not expl.
    INC pflg                            \ mark that +1 plane is flying

    LDA yo:CMP #&AF:BNE calc_move       \ check Y-coord is not bottom => hop5
        SEC:LDA pos:SBC #&87:STA pos    \ is bottom, move to top -&4887
        LDA pos+1:SBC #&48:STA pos+1
        LDA #&C0:STA yo                 \ set new Y-coord ?? seems high??
                                        \ these 3 lines were originally a patch in SS-01
        LDA gex:BEQ calc_move                \ gex counts down from &FF to zero during gun explosion   
            LDA psta:EOR #&80:STA psta      \ if gun explosion set psta bit 7, show not flying - ie dead?
            INC exp                         \ bug! old source check for bounds? TODO
            JMP save_plane                  \ plots plane, writes data back to list 

.calc_move                              \\ start plane random movement:
    LDA #&3F:AND exp:BNE mid
    SEC:
    LDA psta:SBC Xg:STA exp             \ compare with player gun X-coord, store in exp
    LDA #0:BCS pl3                      \ BSC => psta,X > Xg, so plane is to right of player
        SEC:RORA
.pl3 
    RORA:STA sd:
    LDA exp:BNE pl5
.pl20 
    LDA ra1:BPL pl21                \ if random is positve
    LDA sd:EOR #&C0:STA sd          \ XOR top bits of LO address - change next position
.pl21 
    LDA de                         \ dirn when above? difficulty - alway PLUS
.pl5 
    BPL pl4:EOR #&FF:CLC:ADC #1     \ is de ever negative?
.pl4 
    CMP #2:BMI pl6
    STA ra3+1:JSR ra2+3             \ call randomise again,
    LSR ra3+1
    CLC:ADC ra3+1:AND #&3F
.pl6 
    ORA sd:STA exp
.mid 
    LDA exp:
    LDX psta:CPX#1:BPL plnl         \ if X-coord is >=1 then not at left boundary
        ORA #&40:AND #&7F:JMP down  \ exp set bit 6
    \\ end
.plnl
    CPX #72:BMI down+2              \ if X-coord <72 then BMI at
        ORA #&80:AND #&BF           \ exp set bit 7, clear bit 6
.down
    STA exp:INC yo:
    LDA #7:AND pos:CMP #7:BEQ pl2
    INC pos:JMP left
.pl2 
    CLC
    LDA pos:ADC #&79:STA pos        \ 16 bit add &0278+1 to pos - 1 row mode 2?
    LDA pos+1:ADC #2:STA pos+1
.left                                \ move left?
    LDA tog:BEQ enlr                \ check toggle, skip left/right on alternate cycles.
    LDA exp:BPL right
    DEC psta:SEC:                   \ Move left subtract 8, X=X-1
    LDA pos:SBC#8:STA pos
    BCS enlr
        DEC pos+1:JMP enlr
.right                             \ Move right add 8, X=X+1
    INC psta:CLC
    LDA pos:ADC #8:STA pos
    BCC enlr
        INC pos+1
.enlr 
\\ fo plots plane, writes data back to list 
\\ called from .pxp plane plotting, also labelled F%
.fo         
    JSR pp                      \ redraw the plane
.*save_plane
    DEY:DEY:DEY:DEY
    LDA exp:STA(pls),Y              \ save back to plane_list
    INY:LDA pos:STA(pls),Y
    INY:LDA pos+1:STA(pls),Y
    INY:LDA psta:STA(pls),Y
    INY:LDA yo:STA(pls),Y
.pl1 
    CPY no:BEQ hop7
        JMP nxpl        \too long for BNE
.hop7 
    LDA #01:EOR tog:STA tog         \at end so works with N planes flying
    RTS
.tog 
    EQUB 0                       \ toggle byte, 0/1
\\ end Plane
}

\\ Plane plot ..
\\ sprite plotting using XOR in MODE 2, when sprite 
\\  spans 2 lines uses 'top' and 'bottom' loops to write pixels across lines.
\\ Profiler shows this loop is heaviest cycle count
\\ TODO - change LDA(plf),Y to Absolute,Y - save 25%; dont share with other sprites
\\ TODO - unroll X inner loop, plot all cols together in parallel? Lose the BEQ benefit?
\\ Called from start_game, .fo, after plane is plotted
\\ input:
\\ plf plane sprite from address, zero page
\\ Y=? is preserved
\\ used:
\\ st   sprite "to" address, zero page
\\ pos   to address, zero page
\ LDA (LoaD Accumulator)
\ MODE           SYNTAX       HEX LEN TIM
\ Absolute,Y    LDA $4400,Y   $B9  3   4+
\ Indirect,X    LDA ($44,X)   $A1  2   6
\ Indirect,Y    LDA ($44),Y   $B1  2   5+
.pp
.plot_plane
{
    plane_sprite_length=&3F         \ &40 bytes sprite
    TYA:PHA
    CLC
    LDA pos:ADC #&78:STA st             \ 16 bit add &0278 to pos - 1 row mode 2?
    AND #7:EOR #7:STA plot_pl_mod1+1     \ 6 to 1,  XOR low 3 bits, invert, store in immediate SMC below
    STA plot_pl_mod2+1  
    LDA pos+1:ADC #2:STA st+1           \59+2=5b
.*modify_plane_sprite_length
    LDY #plane_sprite_length        \ SMC modified to change sprite length
.plot_loop 
    LDX #7
.plot_pl_mod1
    CPX #&FF:BEQ top           \ if mod=7 then goto tp, top, else bottom
.bottom
    LDA (plf),Y:BEQ bz              \ optimisation, skip plotting zero bytes 
                                    \ BEQ branch skips about 45% bytes, takes 2.4c saves 45% of 11c - OK
    EOR (st),Y:STA (st),Y           \ XOR write to screen
.bz DEY
    DEX
.plot_pl_mod2
    CPX #&FF:BNE bottom               \ repeat inner loop until X=mod
.top
    LDA (plf),Y:BEQ tz
    EOR (pos),Y:STA (pos),Y
.tz DEY
    DEX:BPL top                      \ repeat inner loop until X=0
    TYA:BPL plot_loop               \ repeat outer loop until Y=0
    PLA:TAY                         \ exit and restore Y
    RTS
}
\\ end pp, Plane plot sprite


\\ bomb lists
\\ |50| 1| 2| 3| | | | | |          \ bomb_addr in ZP
\\ |LO|HI|LO|HI|LO|HI|LO|HI         
\\ |60| 1| 2| 3| | | | | |          \ bomb_lower_addr in ZP
\\ |LO|HI|LO|HI|LO|HI|LO|HI   
\\ |00| 1| 2| 3| | | | | |          \ bomb_y    Y coord, 160 rows, 0 is top
\\ | X| Y| X| Y|                    \ ? any other status byte?  X coord

\\ Use of bofg      zp at &73
\\ Set in nbo from inb, as &F0,&EF,&EF,&EE,&EE by level
\\ move plane: clears bit 6 on bofg - to show plane is flying (not explosion)
\\ move bomb: clears bit 7 on bofg when bomb is destroyed
\\ nbo DEC and checks bofg timer to release a new bomb
\\ bofg low bits are timer &3F, reducing by level
\\ bofg high bits are %1100, 

\\ New bombs - check for and release/plot the first instance of bomb
\\ Profiler shows this routine/loop is not important to optimise.
\TODO multiple planes!!  Alternate or lowest or?
.new_bomb 
{     
    NOP                             \  Gets changed to RTS by gun_hit_display
    LDA bomb_max_count                   \ max count x 2, => 2,4,6
    CMP bomb_count:BCC no_bomb      \ if actual count =< then continue   
    LDA #&C0
    \LDA #&40            \AF 3/7/2021  move plane: clears bit 6 on bofg - to show plane is flying (not explosion)
    BIT bofg:BNE no_bomb                  \ BIT %1100 0000, if bit 6 or 7 set, then skip
    DEC bofg:BNE no_bomb                  \ bofg is timer/counter, if zero, then new bomb

 \   LDX #0          
\.find_slot_loop                                 \ check that HI addr is zero => free slot
    \INX:                                        \ X =1,3,5,.. Need to loop once on 2
\    CPX bomb_max_count: BCS no_bomb             \ Move to end? check bounds to loop based on bost
    \INX                                          \ X =2,4,6,.. Need to loop once on 2
\    LDA b_addr+1,X:BNE find_slot_loop               \ find a free bomb slot, HI addr = zero

    LDX bomb_max_count                          \ X =2,4,6,.. Need to loop once on 2
.find_slot_loop 
    DEX                                 \ X points to HI addr
    LDA b_addr,X:BEQ find_plane               \ check that HI addr is zero => free slot
    DEX:BNE  find_slot_loop                 \ X =6,4,2,0.. Need to loop at least once
    BEQ no_bomb                 

.find_plane
    DEX
    LDY #255
.find_plane_loop            \todo limit by plane count?  \TODO multiple planes!!  Alternate or lowest or?
    INY:INY:INY:INY:INY:LDA(pls),Y:BMI find_plane_loop     \ psta bit 7, find the active plane, unbounded loop
    DEY:DEY:DEY:LDA(pls),Y:AND #&C0:BNE found_plane    \ is plane doing? then
    INY:INY:INY:JMP find_plane_loop                \ else try next plane..
.found_plane
    INY:CLC:
    LDA(pls),Y:ADC #&9D:STA b_addr,X           \ calculate LO bomb addr from plane addr + &029D
    INY
    LDA(pls),Y:ADC#2:STA b_addr+1,X                \ calc HI bomb addr, store in table
    CLC                                             \\TODO special case when dont use lower line?  correct
    LDA b_addr,X :ADC #&78:STA b_lower_addr,X  \ calc LO, HI, lower line addr
    LDA b_addr+1,X :ADC #2:STA b_lower_addr+1,X 

    \\ setup SMC addrs for plotting
    CLC                     \ X is 0,2,4,6, stores 52,54
    TXA:ADC #b_addr: STA plot_bomb_upper1+1: STA plot_bomb_upper2+1
    TXA:ADC #b_lower_addr: STA plot_bomb_lower1+1: STA plot_bomb_lower2+1
    LDA b_addr,X
    JSR plot_bomb                           \ first draw plot_bullet_sprite
    LDY #0

    LDA inb:STA bofg                        \ store inb timer in bofg, inb &F0,&EF,&EF,&EE,&EE,
    INC bomb_count;                          \ inc for a new bomb
.no_bomb
    LDA #&C0:ORA bofg:STA bofg:RTS          \ OR with %1100 0000, sets bit 6 and 7,prevents more bombs being created.
                                            \ => no change until inb decremented many times, > 32 levels?
 } 
 

\\ fast XOR plotting, using a source table of ZP addresses, not a single ZP addr.
\\ Profiler shows this routine/loop is moderately important to optimise - has been optimised.
\\ more SMC by the calling function
\\ calling code to INC plot_bomb_lower1, plot_bomb_lower2, etc
\\ uses Y only, so X used in calling code loop
\\ pass in A = LO address to calc mod
.plot_bomb
    bomb_sprite_byte=&2A                    \maybe in ZP? change per sprite?
    bullet_sprite_length=&05  
    LDY #bullet_sprite_length               \ 6 bytes per bullet/bomb
    AND#7:EOR#7:STA plot_bomb_mod+1         \ Calc mod. A=b_addr,X from calling code, SMC
    CMP #5:BPL plot_bomb_upper1                  \ if all pixels are in top line, go to top
    \to do is above a CPY?  when length changes?
 
.plot_bomb_lower1                       \ plot pixels on lower screen line MODE 2
    LDA(b_lower_addr),Y:             \ SMC b_lower_addr is modified by calling code, &62, &64
    EOR #bomb_sprite_byte
.plot_bomb_lower2
    STA(b_lower_addr),Y
    DEY                                 \ Y-1, loop until Y = mod
.plot_bomb_mod
    CPY #&FF:BNE plot_bomb_lower1          \ SMC -not FF, set above.    

.plot_bomb_upper1                       \ plot pixels on upper screen line MODE 2
    LDA(b_addr),Y:
    EOR #bomb_sprite_byte
.plot_bomb_upper2 
    STA(b_addr),Y
    DEY:BPL plot_bomb_upper1             \ Y-1, loop until 0
    RTS

\\ Move bombs - fast
\\ bost - bomb slot table in ZP 
\\ Profiler shows this routine/loop is moderately important to optimise.
\\ bomb moves 2 pixels per cycle  sd AND #7 is 0,2,4,6
\\ uses memory addresses, no X,Y.
\\ TO DO - vary pixels per cycle rate, maybe vary with gravity.
\\ TO DO add Y- coord, use for bottom detect and collision - do we need it?
.move_bombs 
{
    NOP                     \ RTS or NOP
    LDX #&00                \ b_addr = &52
.next_bomb_loop  
    \ X is 0,2,4,6 on loops - 0 means 1 bomb, 2 is 2, 4 is 3,
    \ load immediate zp address of start of bomb table, &52,&62 store in plot SMC
    \ loads &50+X, &60+X 
    CLC                     \ move to next in bomb list
    TXA:ADC #b_addr: STA plot_bomb_upper1+1: STA plot_bomb_upper2+1
    TXA:ADC #b_lower_addr: STA plot_bomb_lower1+1: STA plot_bomb_lower2+1

    LDA b_addr+1,X                               \ check HI addr in b_addr, XX=&53,55,
    BNE unplot                                      \ if zero b_addr+1, => bomb destroyed prev cycle, or never existed.
            \TODO? if is never used empty slot, then do not unplot.  Same as zero case?
        LDA #&7F:AND bofg:STA bofg:BNE next_bomb \always   \ so mask bofg, clear top bit, show there is >0 empty slot
.unplot 
    LDA b_addr,X
    JSR plot_bomb                           \ undraw plot_bullet_sprite
    LDA sc: BMI next_bomb                        \ check for frame end flag - do not redraw this bomb 
    \\ move bomb - update addr in table
.upper_addr
    LDA b_addr,X :AND #7
    CMP bomb_vert_newline:BPL upper_next_line                \ if pixel = 6 %0110 then new line
        CLC:LDA b_addr,X                                     \ add 2 pixels, or add &027A
        ADC bomb_vert_rate:STA b_addr,X
        CLC:LDA b_lower_addr,X
        ADC bomb_vert_rate:STA b_lower_addr,X
        JMP check_bottom 
.upper_next_line                                            \ moves to new MODE2 line
    CLC:
    LDA b_addr,X:ADC bomb_vert_LO:STA b_addr,X                \ add &0278+2=&027A to bomb screen address (1 rows)
    LDA b_addr+1,X:ADC bomb_vert_HI:STA b_addr+1,X
    LDA b_lower_addr,X:ADC bomb_vert_LO:STA b_lower_addr,X        \ add &027A to bomb screen address (1 rows)
    LDA b_lower_addr+1,X:ADC bomb_vert_HI:STA b_lower_addr+1,X

.check_bottom                                               \TODO - this writes to 8000+mem, ROM, stop earlier?
    LDA b_addr+1,X
    CMP #&80:BCC bomb_redraw                                \ was BMI, BCCcheck bottom of screen
        DEC bomb_count;    
        LDA #0:STA b_addr+1,X:BEQ next_bomb \always         \ yes, bomb hits bottom; set bomb[1]=0
.bomb_redraw
    LDA b_addr,X
    JSR plot_bomb                  \ re-draw plot_bullet_sprite
.next_bomb  
    INX:INX                                 \ next X is 2,4,6, 
    CPX bomb_max_count:BCC next_bomb_loop        \ 2,4 will equal b_addr another bomb? then loop, or exit 
    \BEQ next_bomb_loop                      \ BCC is BLT, as zero-based is less than max
    RTS                                     \ loop is 127 bytes, cannot extend!!n
}


\\ Random number
.ra2 
    STA ra3+1:SEC:LDA py:AND #&7F: \ IFM - LDA was ra1
.ra3 
    SBC #&10:BPL ra3:ADC ra3+1: \IFM - SBC#10->SBC#&10 \[note: .ra3 has SBC #0 (disassembly is #&10)]
    RTS
.end_GG_02_code
PRINT ".end_GG_02_code = ", ~end_GG_02_code

\\ bomb movement parameters used in Move bomb, updated per level
\\ TODO - could move to ZP if space.
.bomb_vert_rate         \ from 1 to 7.  8 may work to test!
EQUB &03
.bomb_vert_newline      \ bomb_vert_rate+bomb_vert_newline = 8
EQUB &05
.bomb_vert_LO
EQUB &7B                \ this is &78 + bomb_vert_rate
.bomb_vert_HI
EQUB &02



\\ Fixed postion
\ ORG &2D02
ORG &2CF0           \ some space
\ this is all zeroed in start_game 2D0A to 2D5E
\ AF 27/6/2021 added 2 more entries, 8 bytes total 17
.bullet_list                \ pointer to this in zero page bulst=&8A
    EQUB &08                \ contains max no of bullets 8
    EQUB &00,&00,&00,&00        \ exp, screen address sd, sd+1
    EQUB &00,&00,&00,&00
    EQUB &00,&00,&00,&00
    EQUB &00,&00,&00,&00

  \\ plane_list,1 count, 5 bytes per plane, 6 to 10, Total 51
  \ 81, LO, HI, ?, ?
  \ exp, pos, pos+1, psta, yo
  \ 42 9A 39 43 CA    \this is flying near top
  \ 41 39 5F 47 41    \this is flying mid right
  \ 81 A8 3A 95 D0
  \ 81 F8 3A 9F D0
  \ 81 48 3B A9 D0
  \ 81 98 3B B3 D0
  \ 81 E8 3B BD D0
.plane_list                 \ was pls_addr=&2D13 
    EQUB &1E      \ TEST AF was &1E = 6 planes, &F = 3 planes
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00,&00,&00,&00,&00
    EQUB &00                    \ padding
.plX
    EQUB &00,&00,&00,&00,&00,&00,&00,&00
\ IFM - L2D47 - sprite pointers? Maybe more?

\ORG &2D47

\.L2D47
\.bomb_list_old                \ pointer to this in zero page bost=&8C
\        EQUB    $02     \ no of bombs, default 2
\        EQUB    $D6,$00,$00,$00,$00,$00,$00
\        EQUB    $00,$00,$00,$00,$00,$00,$00,$00
\        EQUB    $00,$00,$00,$00,$00,$00,$00,$00

\.L2D5F
.cloud_sprite_offset_list
        EQUB    $80,$40,$40,$00,$80,$00,$40,$80
        EQUB    $00

.bis   \ Pigeon sprite animation pointers (offsets from &1A00/&1B00)
        EQUB    $88,$A0,$B8,$D0,$E8,$D0,$B8,$88

.sc                     \ Score Counter flag byte
    EQUB    $00
\.sc+1                   \ Score LSB in BCD, multiplied by 10 in display
    EQUB    $00
\.sc+2                   \ Score MSB in BCD
    EQUB    $00

.de                    \de=&2D79   
    EQUB    $20
.ti         \.de+1
    EQUB    $03           \ timer used to increase difficulty
    EQUB    $42           \.de+1, ti+1 is a timer default, so when ti is zero is reset to value

.ba                      \ ba is Bird Address LSB & 2D7D
    EQUB    $00
    EQUB    $00           \ ba+1 is Bird Address MSB set high bit when shot, AND #&80
    EQUB    $06           \ ba+2 is index for sprite animation, set high bit when shot.
    EQUB    $00           \ ba+3 X-coord column, set by L<>R direction #76 or #0, then inc/dec by 1

\ ORG &2D80
ORG &2D78
\\ OSWORD Envelope definitions, 14 bytes, with 2 unused padding, so 16
\\ padding gaps are filled with other variables.
.envelope_base_addr                         \ IFM - envelope data
    EQUB    $01,$81,$FD,$00,$00,$28,$00     \ Pigeon 'tweet'
    EQUB    $00,$3C,$06,$CE,$CE,$3B,$7E
    \ EQUB    $00,$00                        \ Padding now used for .buf
.buf 
    EQUB    LO(bullet_sprite_addr)     \ Bullet sprite pointer low byte bullet_sprite_addr
    EQUB    HI(bullet_sprite_addr)     \ Bullet sprite pointer high byte

    EQUB    $02,$83,$00,$00,$00,$00,$00     \ Enemy explosion
    EQUB    $00,$7F,$FF,$FE,$FF,$7E,$78
    \ EQUB    $00,$00                   \ Padding now used for .bof
.bof                         
    EQUB    LO(bomb_sprite_addr)       \ Enemy bomb sprite pointer low byte
    EQUB    HI(bomb_sprite_addr)       \ Enemy bomb sprite pointer high byte

    EQUB    $03,$86,$FF,$00,$01,$02,$01     \ Player explosion
    EQUB    $01,$7F,$FF,$FD,$FD,$7E,$78
.Xg
    EQUB    $20             \ Player gun X coordinate
.inb
    EQUB    $DF             \ bomb interval default &F value for bofg, used in nbo

    EQUB    $04,$81,$FB,$E6,$FE,$10,$01     \ Player fire
    EQUB    $5A,$7F,$FE,$E2,$9C,$7E,$00
    EQUB    $00,$00
    
    EQUB    $05,$0A,$00,$00,$00,$01,$0C     \ Tune voice
    EQUB    $00,$7F,$F5,$00,$E2,$7E,$00
    EQUB    $00,$00

\ sounds definitions OSWORD 7 parameter block,
\  XY+0..1=channel
\  XY+2..3=volume or envelope
\  XY+4..5=pitch
\  XY+6..7=duration
\ Bonus Sound definition for OSWORD 7, SOUND call
.bsou
.sound_bsou
  \EQUD &FFFF0012 
  \EQUD 0
    EQUB    $12,$00,$FF,$FF,$00,$00,$00,$00 
.sound_bullet	            \ 2DD0
    EQUB    $12,$00,$04,$00,$50,$00,$14,$00    \ 
.sound_plane_hit            \ 2DD8
    EQUB    $10,$00,$02,$00,$06,$00,$A0,$00 
.sound_player_hit           \ 2DE0
    EQUB    $10,$00,$03,$00,$07,$00,$C8,$00
.sound_bonus                \ 2DE8
    EQUB    $13,$00,$01,$00,$B4,$00,$0A,$00
.sound_pigeon               \ 2DF0
    EQUB    $13,$00,$01,$00,$FA,$00,$0A,$00
\ this definition is modified as tune is played
.sound_note                 \ 2DF8
    EQUB    &01,&00,&05,&00
.sound_note_volume          \ 2DFC
    EQUB    &49,&00
.sound_note_pitch           \ 2DFE
    EQUB    &0F,&00

.end_GG_02
PRINT ".end_GG-02 = ", ~end_GG_02