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
\\ Updates: Xg (x-coord), gunp (screen memory pos)
.mg
.move_gun
{
    NOP                                 \ SMC set to RTS to disable
    JSR gun                             \ address of .gun  &28D3
    LDA #&81:LDY #&FF:LDX #&BD          \ http://beebwiki.mdfs.net/OSBYTE_%2681
    JSR osbyte                          \ check for "X" move right
    INX:BEQ r
    DEY:LDX #&9E:JSR osbyte             \ check for "Z" move left
    INX:BNE gd
.l                                      \ move left 
    LDX Xg:CPX #1:BEQ gd:               \ check limit
    DEX:STX Xg:SEC:                     \ X coord -1
    LDA gunp:SBC#8:STA gunp:BCS gd      \ screen memory pos -8
        DEC gunp+1:BCC gd               \ always
.r                                      \ move right 
    LDX Xg:CPX #71:BEQ gd:              \ check right limit
    INX:STX Xg:CLC
    LDA gunp:ADC #8:STA gunp            \ screen memory pos +8
    BCC gd
        INC gunp+1
.gd                                    \ check collision - any non zero pixels on bottom line.
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
\\ Sprite length cycles 40 bytes
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

\ bullwt list table 
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
        LDA #&FE:AND bfg:STA bfg        \ clear bit 0, shows can fire again?
        JMP nxbu
.bu1 
    INY:JSR plot_bullet_sprite             \ XOR undraw plot_bullet_sprite
    LDA(bulst),Y:BPL bu2                   \ if bulst[3] positive, then continue
.bu7 
    LDA#0:STA sd+1:BEQ nxbu   \alws        \ else terminate this bullet, set bulst[2] = 0
.bu2 
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
    JSR plot_bullet_sprite                \ draw plot_bullet_sprite
.nxbu 
    DEY:DEY:DEY
    LDA exp:STA(bulst),Y:                  \ restore from zp to bulst
    INY:LDA sd:  STA(bulst),Y:
    INY:LDA sd+1:STA(bulst),Y:
    INY
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
    BNE nwb0
    LDA #&81:LDY#&FF:LDX#&B6           \ TODO changed LDX#&A6 to LDX#&B6 to fix player firing  
    JSR osbyte                         \ OSBYTE 129 Read key, keyboard scan for ENTER -74
    INX:BEQ nwb1                        \ if pressed, fire

    LDA #&00:STA fp0 \: RTS             \ else SMC updates fp0
.nwb0 
    RTS
.fp0 
    EQUB 0                        \ fp0 counter modified below TODO move to ZP

.nwb1 
    \ LDA #2:BIT bfg
\\\\\\\\\\\\\\\\ fpat \\\\\\\\\\\\\\\\
    LDA fp0:BEQ fp1             \ decrement counter, return if > 0
    DEC fp0:RTS
.fp1 
   LDA #18:STA fp0             \ reset counter to 18
\  JMP nwb_patch_return        \ &297D
\\\\\\\\\\\\\\\\ end fpat \\\\\\\\\\\\\\\\

    LDY #&FF                            \ proceed to fire again
.nwb2 
    INY:INY:INY:INY                     \  Y is 3, 7, 11
    CPY bullet_list: BCS nwb0           \ Y>=bulst dont search beyond bullet list length
    LDA(bulst),Y:BNE nwb2               \ search for unused list entry, bulst[2] = 0, no check on bounds
    DEY:DEY
    LDA #bullet_init_y:STA(bulst),Y:    \ bulst[0] = 9D is y coord, 175 at gun tip, reducing upwards
    INY:SEC
    LDA gunp:SBC #&6E:STA(bulst),Y      \ 16 bit subtract from gunp bulst[1] = LO
    STA sd                              \ Initial Bullet addr is (gunp-&026E) in bulst[1,2] 
    INY:LDA gunp+1:SBC #2:STA(bulst),Y  \ bulst[2] = HI
    STA sd+1:
    INY:LDA Xg:CLC:ADC #3:STA(bulst),Y   \ Bullet start X coord is (Xg+3) in bulst[3] 
    JSR plot_bullet_sprite               \ first plot_bullet_sprite for new bullet
    LDA #3:ORA bfg:STA bfg               \ set bfg bit0,1 shows 2 bullets
    LDA #1:ORA sc:STA sc
    LDX #LO(sound_bullet):LDY#HI(sound_bullet)  \ OSWORD - A=7 SOUND command at &2DD0  sound_bullet
    LDA #7:JMP osword
}

\ s5 Sprite/screen memory movement for bombs, bullets?
\ uses EOR plotting, from sf, to st & sd (across 2 MODE 2 rows) 
\ called from mbo, Move Bombs,  Move player bullets, shared
\ input is zero-page sd, sf address pointers; Y index
\ output is zero-page st, address pointers and mod?
\ Y is preserved
.s5 
.plot_bullet_sprite
{
    bullet_sprite_length=&05  
    TYA:PHA:                        \ save Y
    LDY #bullet_sprite_length       \ 6 bytes per bullet/bomb
    \LDX #&2A                        \?? temp white
    CLC:
    LDA sd:ADC #&78:STA st:         \ add 1 row, &0278 and store in st
    LDA sd+1:ADC #2:STA st+1
    LDA sd:AND#7:EOR#7:STA mod      \ modulo 
    CMP #5:BPL top                  \ if all pixels are in top line, go to top
.bot 
    LDA(sf),Y:             \AF optimise?
    \TXA
    EOR(st),Y:STA(st),Y
    DEY:CPY mod:BNE bot     \ Y-1, loop until = mod
.top 
    LDA(sf),Y:
    \TXA
    EOR(sd),Y:STA(sd),Y
    DEY:BPL top             \ Y-1, loop until 0
    PLA:TAY:                \ restore Y
    RTS
}


\\ New plane, np, STarts a plane flying from the formation
\\ Determines if level is complete if no planes remaining.
\ pflg = plane flag - where init?
.np 
    NOP                             \ SMC in gun_hit_display, set to RTS
    LDA pflg                        
    CMP #01:BPL nw                  \ if any flag bit set, then RTS
    DEC ti:BNE nw                   \ ti=ti-1, if timer <> 0 then RTS
    LDA ti+1:STA ti:                \ timer=0 so reset
    LDA no:JSR ra2:TAY:SEC
.np2                                \ renamed from .n2
    SBC #5:BPL np2:TAX
.np3 
    INY:INX:BNE np3
    DEY:LDA(pls),Y:BMI fy:LDY no
.se 
    DEY:LDA(pls),Y:BMI fy           \ Y=Y-1 - if high bit, skip
    DEY:DEY:DEY:DEY:BNE se          \ Y=Y-4, repeat until zero
    LDA #&80:ORA sc:STA sc          \ not found, set sc level is complete
    RTS
.fy 
    EOR #&80:STA(pls),Y             \ XOR high bit, set is flying
.nw 
    RTS


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
    JSR pp:JMP px4
.px1 
    \ TODO align to published, as LDA #&40, was LDX #&0
    CMP #12:BNE px2:
    LDA #&40:STA plf:         \ set LO plane sprite 
    JSR pp:                     \TODO - repeats here?  no px4
    LDA #&80:STA plf:         \ set LO plane sprite 
    JSR pp:JMP px4
.px2 
    CMP #6:BNE px3:
    LDA #&80:STA plf:         \ set LO plane sprite 
    JSR pp
    LDA #&C0:STA plf:         \ set LO plane sprite 
    JSR pp:JMP px4
.px3 
    CMP #1:BNE px4:
        LDA #&C0:STA plf:         \ set LO plane sprite 
        JSR pp
.px4 
    LDA #HI(plane_sprite_addr):STA plf+1          \ restore to plane_sprite_addr
    PLA:STA plf:DEC exp
.nx JMP fo+3                      \ fo plots plane, writes data back to list 
}
\\ End of Plane Explosion plotting


\\ Move plane
\\ Logic for random Left/Right and following player
\\ Calls pxp, pp to determine sprite and plot
\\ TODO - not efficient to copy all to zp if not moving this plane
.mp
{ 
    LDY #0:LDA(pls),Y:STA no:STY pflg           \ initial plfg=0
.*nxpl 
    INY:LDA(pls),Y:STA exp                      \ load plane values to zero page
    INY:LDA(pls),Y:STA pos
    INY:LDA(pls),Y:STA pos+1
    INY:LDA(pls),Y:STA psta
    INY:LDA(pls),Y:STA yo
    LDA exp:AND #&C0:BNE p0                      \ check for bottom screen?
    JMP pxp                                     \ un-plot plane, remove prior to move
.p0 
    LDA psta:BPL p1
        JMP pl1                                 \ psta plane status not active, JMP next plane
.p1 
    DEC exp

    \\ start plane hit bullet detection 
    TYA:PHA:
    LDY #0:LDA(bulst),Y:STA sd              \ no of bullets in list x 4; sd is temp counter
.h
.next_plane 
    INY:
    LDA(bulst),Y:SEC:SBC yo:BMI nh:         \ compare Y coord, => "not hit"
    CMP#8:BPL nh
    INY:INY:
    LDA(bulst),Y:BEQ nh+2                   \ if HI is zero, not bullet, => not hit
    INY:LDA(bulst),Y:SEC:SBC psta:BMI nh+3  \ compare X coord, not hit
    CMP #7:BPL nh+3                         \ not hit
    CMP #3:BEQ o                        \ yes, within 3 pixels, is hit
    LDA #&40:ORA sc:STA sc:
    ASLA:STA(bulst),Y:BNEnh+3           \ always
.o
.plane_hit 
    LDA #25:STA exp                     \ plane is hit, sound, clear bullet, score, etc
    LDA #LO(sound_plane_hit)
    STA(bulst),Y:TAX                    \ indirect way to LDX #LO(sound_plane_hit), store &D8 in bulst to show hit.
    LDY#HI(sound_plane_hit)   
    LDA #7:JSR osword                   \ OSWORD - A=7 SOUND command at &2DD8 sound_plane_hit
    PLA:TAY
    LDA #2:ORA sc:STA sc
    JSR pp                          \ un-plot plane, as is hit.
    JMP pxp
.nh 
.plane_not_hit 
    INY:INY:INY:                        \ plane not hit
    \ CPY sd:BMI h                      \ at end of list?, loop
    CPY sd:BCC h                        \ Y < sd, so loop AF 28/06/2021 BCC unsigned
    PLA:TAY
    \\ end plane hit bullet detection 

    LDA bofg:AND #&BF:STA bofg
    INC pflg:JSR pp                     \ un-plot the plane
    LDA yo:CMP #&AF:BNE hop5            \ check Y-coord is not bottom => hop5
        SEC:LDA pos:SBC #&87:STA pos    \ is bottom, move to top -&4887
        LDA pos+1:SBC #&48:STA pos+1
        LDA #&C0:STA yo                 \ set new Y-coord ?? seems high??
                                        \ these 3 lines were originally a patch in SS-01
        LDA gex:BEQ hop5                \ gex counts down from &FF to zero during gun explosion   
        LDA psta:EOR #&80:STA psta
        INC exp                         \ bug! old source check for bounds? TODO
        JMP fo+3                        \ fo plots plane, writes data back to list 

.hop5 
    LDA #&3F:AND exp:BNE mid
    SEC:
    LDA psta:SBC Xg:STA exp
    LDA #0:BCS pl3
        SEC:RORA
.pl3 
    RORA:STA sd:
    LDA exp:BNE pl5
.pl20 
    \\ JSR patch                    \ AF patch replaced by inserted lines below
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
    LDA exp:LDX psta:CPX#1:BPL plnl
    ORA #&40:AND #&7F:JMP do
\\ end

\\ renamed nl to plnl as conflict with note list
.plnl
 
    CPX #72:BMI do+2:ORA #&80:AND #&BF
.do 
    STA exp:INC yo:
    LDA #7:AND pos:CMP #7:BEQ pl2
    INC pos:JMP lft
.pl2 
    CLC
    LDA pos:ADC #&79:STA pos        \ 16 bit add &0279 to pos - 1 row mode 2?
    LDA pos+1:ADC #2:STA pos+1
.lft                                \ move left?
    \LDA exp:ROLA
    \\ JMP nlr                   \TODO was LDA exp:ROLA - now is patched code doing similar??
    \\ start inserted patch from SS-01
    \\ better plane movement added later
    LDA tog:BEQ enlr                \ check toggle, skip alternate cycles.
    LDA exp:BPL rt
    DEC psta:SEC:               \ Move left subtract 8
    LDA pos:SBC#8:STA pos
    BCS enlr
        DEC pos+1:JMP enlr
.rt                             \ Move right add 8
    INC psta:CLC
    LDA pos:ADC #8:STA pos
    BCC enlr
        INC pos+1
.enlr 
    LDA #01:EOR tog:STA tog
    JMP fo                          \ plane plotting
.tog 
    EQUB 0                       \ toggle byte, 0/1
}
  \\ end inserted patch from SS-01
\\ end Plane

\\ fo plots plane, writes data back to list 
\\ called from .pxp plane plotting, also labelled F%
\\ input Y=?  where is Y set?
.fo         
    JSR pp
    DEY:DEY:DEY:DEY
    LDA exp:STA(pls),Y              \ save back to plane_list
    INY:LDA pos:STA(pls),Y
    INY:LDA pos+1:STA(pls),Y
    INY:LDA psta:STA(pls),Y
    INY:LDA yo:STA(pls),Y
.pl1 
    CPY no:BEQ hop7
        JMP nxpl
.hop7 
    RTS
\\ end fo


\\ Plane plot ..
\\ sprite plotting using XOR in MODE 2, when sprite 
\\  spans 2 lines uses 'top' and 'bottom' loops to write pixels across lines.
\\ Called from start_game, .fo, after plane is plotted
\\ input:
\\ plf plane sprite from address, zero page
\\ Y=? is preserved
\\ used:
\\ st   sprite "to" address, zero page
\\ pos   to address, zero page
.pp
.plot_plane
{
    plane_sprite_length=&3F         \ &40 bytes sprite
    TYA:PHA
    CLC
    LDA pos:ADC #&78:STA st         \ 16 bit add &0278 to pos - 1 row mode 2?
    AND #7:EOR #7:STA mod             \6 to 1,  XOR low 3 bits, invert, store in mod=&74
    LDA pos+1:ADC #2:STA st+1       \59+2=5b
.*modify_plane_sprite_length
    LDY #plane_sprite_length        \ SMC modified to change sprite length
.plo 
    LDX #7:CPX mod:BEQ tp           \ if mod=7 then goto tp, top, else bottom

.bt                                 \ bottom
    LDA (plf),Y:BEQ bz              \ optimisation, skip plotting zero bytes
    EOR (st),Y:STA (st),Y           \ XOR write to screen
.bz DEY
    DEX:CPX mod:BNE bt              \ repeat inner loop until X=0

.tp                                 \ top
    LDA (plf),Y:BEQ tz
    EOR (pos),Y:STA (pos),Y
.tz DEY
    DEX:BPL tp                      \ repeat inner loop until X=0
    TYA:BPL plo                     \ repeat outer loop until Y=0
    PLA:TAY                         \ exit and restore Y
    RTS
}
\\ end pp, Plane plot sprite


\\ New bombs
\\ TODO - bofg is restricting to 2 bombs?
.nbo 
    NOP                             \  Gets changed to RTS by gun_hit_display
    LDA #&C0
    BIT bofg:BNE nbo4
    DEC bofg:BNE nbo4
    LDY #255
.nbo2 
    INY:INY:INY:INY:INY:LDA(pls),Y:BMI nbo2
    DEY:DEY:DEY:LDA(pls),Y:AND #&C0:BNE nbo5
    INY:INY:INY:JMP nbo2
.nbo5 
    INY:CLC:LDA(pls),Y:ADC #&9D:STA sd:
    INY:LDA(pls),Y:ADC#2:STA sd+1:
    JSR plot_bullet_sprite                    \ XOR remove plot_bullet_sprite
    LDY #0
.nbo3 
    INY:INY:LDA(bost),Y:BNE nbo3            \ find a free bomb slot
    LDA sd+1:STA(bost),Y:DEY:LDA sd:STA(bost),Y
    LDA inb:STA bofg                        \ store inb in bofg
.nbo4 
    LDA #&C0:ORA bofg:STA bofg:RTS
  
\ Move bombs
\ bost - bomb slot table  
.mbo 
    LDY #0:LDA(bost),Y:STA no               \ load no bombs, zero page
    LDA bof:STA sf:LDA bof+1:STA sf+1       \ load sprite locn, zero page
.ntbo 
    INY:LDA(bost),Y:STA sd:                 \load bomb into zero page sd
    INY:LDA(bost),Y:STA sd+1
    BNE bo1:
    LDA #&7F:AND bofg:STA bofg:JMP bo7      \ mask bofg, clear top bit
.bo1 
    JSR plot_bullet_sprite                  \ undraw plot_bullet_sprite
    LDA sd:AND#7:CMP#6:BPL bo2
    INC sd:INC sd:LDA sd+1:JMP bo4          \ bottom?
.bo2 
    CLC:LDA sd:ADC #&7A:STA sd              \ add &027A to bomb screen address (n rows?)
    LDA sd+1:ADC #2:STA sd+1
.bo4 
    CMP #&80:BMI bo6:
    LDA #0:STA(bost),Y:BEQ bo7 \always           \bomb hits bottom? set bost=0
.bo6 
    JSR plot_bullet_sprite                       \ re-draw plot_bullet_sprite
    DEY:LDA sd:STA(bost),Y:
    INY:LDA sd+1:STA(bost),Y                    \ put back in bomb table
.bo7 
    CPY no:BMI ntbo                             \ another bomb? then loop, or exit
    RTS


\\ Random number
.ra2 
    STA ra3+1:SEC:LDA py:AND #&7F: \ IFM - LDA was ra1
.ra3 
    SBC #&10:BPL ra3:ADC ra3+1: \IFM - SBC#10->SBC#&10 \[note: .ra3 has SBC #0 (disassembly is #&10)]
    RTS
.end_GG_02_code
PRINT ".end_GG_02_code = ", ~end_GG_02_code


\\ Fixed postion
\ ORG &2D02
ORG &2CF0           \ some space
\ this is all zeroed in start_game 2D0A to 2D5E
\ AF 27/6/2021 added 2 more entries, 8 bytes
.bullet_list                \ pointer to this in zero page bulst=&8A
    EQUB &08                \ contains max no of bullets 8
    EQUB &00,&00,&00,&00        \ exp, screen address sd, sd+1
    EQUB &00,&00,&00,&00
    EQUB &00,&00,&00,&00
    EQUB &00,&00,&00,&00

  \\ plane_list like this, 5 bytes per plane
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
\ IFM - L2D47 - sprite pointers? Maybe more?

\ORG &2D47

\.L2D47
.bomb_list                \ pointer to this in zero page bost=&8C
        EQUB    $02,$D6,$00,$00,$00,$00,$00,$00
        EQUB    $00,$00,$00,$00,$00,$00,$00,$00
        EQUB    $00,$00,$00,$00,$00,$00,$00,$00

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