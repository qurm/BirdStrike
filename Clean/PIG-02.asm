\ converted from $.PIGSRCE BIRD DISK Side 1
\ (c) Andy Frigaard 1984 to May 2021
\ The PIG files were written later (1983-4) based on $.PIGSRCE and were a playable game with
\ some missing features, a main loop calling routines from OLDSRCE.  The main loop was later 
\ overwritten and only the subroutines used.
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains
\  Note, Tune data lists.
\  Pigeon/bird initialise and move
\  Plane hit animation
\  Clouds and background scenery drawing and data


\ 15/6/21 now includes background scenery data as EQUB (was in G-Scene.bin)


\ Note list and Tune list source of music.
\ nl=&2382    \ Note list &30 bytes, zero-terminated lists, 13,14,11,8
\ tl=&23B2    \ Tune List  pairs zero-terminated lists, pitch, duration, 16, 16, 16, 12, 8, 16, 1
.nl
        EQUB    $0D,$4A,$18,$8C,$8E,$1C,$8A,$84
        EQUB    $14,$82,$20,$44,$05,$00,$48,$18
        EQUB    $86,$84,$14,$86,$84,$14,$88,$2A
        EQUB    $4E,$05,$00,$4A,$18,$8C,$8E,$1C
        EQUB    $8A,$84,$14,$82,$20,$44,$00,$44
        EQUB    $42,$42,$44,$46,$24,$14,$05,$00
.tl
\ Start of level / bonus tunes
        EQUB    $65,$17,$5D,$05,$59,$0A,$65,$05
        EQUB    $79,$0A,$81,$05,$89,$1E,$79,$1E
        EQUB    $00,$6D,$17,$75,$05,$79,$0A,$75
        EQUB    $05,$79,$0A,$6D,$05,$65,$1E,$59
        EQUB    $1E,$00,$65,$17,$5D,$05,$59,$0A
        EQUB    $65,$05,$79,$0A,$81,$05,$89,$1E
        EQUB    $79,$0F,$00,$79,$0F,$81,$0F,$81
        EQUB    $0F,$79,$0F,$75,$0F,$79,$1E,$00
        EQUB    $59,$05,$59,$05,$59,$05,$49,$0F
        EQUB    $00,$41,$05,$35,$0A,$39,$05,$3D
        EQUB    $05,$41,$05,$65,$0A,$65,$0A,$55
        EQUB    $14,$00,$14,$00

\ ORG &240E 
\ from here appears in G at &240E 
\ also as B%

\\ Pigeon, Move Bird
\\ called from main loop
\ &1A00  Bird Sprites, Flying Left?  L=>R, on single page 
\ &1B00  Bird Sprites, Flying Right?  R=>L, on single page 
\ bis is list of 7 Pigeon sprite animation pointers (offsets from &1A00/&1B00)
\        EQUB    $88,$A0,$B8,$D0,$E8,$D0,$B8,$88
\ ba is Bird Address LSB & 2D7D
\ ba+1 is Bird Address MSB set high bit when shot, AND #&80
\ ba+2 is index for sprite animation, set high bit when shot.
\ ba+3 X-coord column, set by L<>R direction #76 or #0, then inc/dec by 1
\ py is pigeon Y-coord , multiple of 16
\ picn pigeon counter, increment for each new one, used to alternate sides
.pg 
    \ TODO - Released source LDA #&1B (was &0B) - source of bird sprite?
   LDA #HI(pigr_sprite_addr):STA sf+1
   LDA ba+1:BNE pgb0                \ Check if Bird is in flight, MSB <> 0
   LDA #&42:BIT sc:BEQ ep           \ check Score byte flag

   \ TODO - BIT with picn = &1D54
   \ 2420   2C 54 1D   BIT &1D54
   \ picn is 02FC in released - this was a possible bug
   LDA #02:BIT picn:BEQ pgl         \ if pigeon counter is even, then fly L=>R

   \ Initialise Flying Right  R=>F
   \ TODO - Released source LDA #&1B  (was &0B)
.pig_init_right   
   LDA #HI(pigr_sprite_addr):STA sf+1:STA pg+1:
   LDA #&68:STA ba:STA sd:
   LDA #0:STA xps+1:                \ set X-coord limit column 0, SMC modifies below
   LDA #76:STA ba+3                 \ set X-coord var column=76
   LDA #&4B:STA b5-2:BNE b3         \ A=MSB of bird screen address SMC modifies #&49 or #&4B
.pgl
.pig_init_left           
   \ Initialise Flying Left  L=>R
    \ TODO - Released source LDA #&1A (was &0A)
    LDA #HI(pigl_sprite_addr):STA sf+1:STA pg+1
    LDA #0:STA ba:STA sd:
    STA ba+3                        \ set X-coord var column=0
    LDA #76:STA xps+1               \ set X-coord limit column 76, SMC modifies below
    LDA #&49:STA b5-2              \ A=MSB of bird screen address SMC modifies #&49 or #&4B

   \ Initialise common Flying Left or Right
.b3 
   LDA #0:STA py                 \ new pigeon,  Y-coord = 0
   INC picn                      \ inc pigeon counter
   
   LDA #7:AND ra1:TAX               \ get random [0-7] in X
    \ TODO - Released source LDA #&4B
   LDA #&4B:CLC            \SMC modified above #&49 or #&4B was initial &4B
.b5 
   ADC #5:TAY              \ preserve A+5 in Y
   LDA py:ADC #16:STA py   \ add 16, random times => random pigeon Y coord
   TYA                     \ recover A
   DEX:BPL b5              \ repeat X (random 0-7) times
   STA ba+1:STA sd+1       \ store MSB of bird address
   LDX #2:STX ba+2         \ store initial sprite offset value, 2
   LDA bis,X:STA sf        \ select Sprite offset from "bis" table
   JMP pb                  \ do initial plotBirdSprite
.ep 
   RTS
\ End Pigeon Initialise


\ After intialisation, process bird, move, check hits.
\ so renamed b0 to pgb0, another bo b1 in S.asm, different purpose
.pgb0 
   LDA ba:STA sd:                   \ copy Bird address to zero page sd
   LDA ba+1:STA sd+1:BPL pgb1       \ if high bit clear, then pigeon not hit, so branch

   DEC ba+2:BNE ep                  \ dec index for animation, point to next sprite   
                                    \ why ep - maybe page boundary .x too far?
   EOR #&80:STA sd+1                \ fix sd+1 to high bit is clear

   \ TODO - Released source LDA #&10, was LDA #0, line order changed.
   \LDA #&10:STA ba+1
   \LDA #&10:ORA sc:STA sc

   LDA #&10:ORA sc:STA sc  \ set Score byte flag
   LDA #&00:STA ba+1       \ clear bird address for next cycle
   BEQ bx                  \ go to plot the dead pigeon sprite
   
\ so renamed b1 to pgb1
.pgb1 
   LDA ba+2:AND #&7F:TAX
   LDA bis,X:STA sf           \ select Sprite offset from "bis" table
   LDY #0:LDA(bulst),Y:STA no:

\ renamed h to pgh
.pgh                                \ check pigeon is hit?
   INY:LDA(bulst),Y:SEC:SBC py:BMI pgnh
   CMP #7:BPL pgnh
   INY:INY:LDA(bulst),Y:BEQ pgnh+2
   INY:LDA(bulst),Y:SEC:SBC ba+3:BMI pgnh+3
   CMP #3:BPL pgnh+3
   LDA #&E8:STA(bulst),Y:TAX:
   LDA #7:LDY #&2D:JSR &FFF1        \ Sound
   LDA #&10:STA ba+2:               \ store sprite offset value, 16 - dead pigeon?
   LDA #&80:ORA ba+1:STA ba+1      \ set address high bit for dead.
   JSR pb                           \ do plotBirdSprite & RTS
.bx 
 \ TODO - Released source LDA #&1B, was LDA #&B
   LDA #HI(pigr_sprite_addr):STA sf+1:
   LDA #&70:STA sf:JMP pb            \ do plotBirdSprite & RTS
.b9 
   LDA #4:ORA sc:STA sc             \ set Score byte flag
   LDA #0:STA ba+1
.x 
   RTS
\ so renamed nh to pgnh
.pgnh                \ pigeon not hit
   INY:INY:INY:
   CPY no:BMI pgh       \ loop again to check next bullet hit
   LDA #&80:EOR ba+2    \ toggle high bit for alternate cycles
   STA ba+2:BMI x       \ skip and exit 1 in 2 cyles

   JSR pb               \ Remove using XOR, do plotBirdSprite
   LDA ba+3             \ pigeon, get X-coord
.xps 
   \TODO - Released source CMP #00, was CMP #76  &4C
   CMP #00:BEQ b9             \ if pigeon at left/right of screen  SMC 00 or 76
   AND #31:BNE b6
   LDA #7:LDY #&2D:LDX #&F0:JSR osword    \ OSWORD - A=7 SOUND command at &2DF0
.b6
   LDX ba+2:DEX:BPL b7       \ dec sprite animation offset value
      LDX #7                 \ if=0, reset sprite animation index to 7
.b7 
   STX ba+2
   LDA bis,X:STA sf           \ select Sprite offset from "bis" table
   LDA xps+1:BEQ b10
                              \ moving L->R
   INC ba+3:CLC               \ inc x-coord

   LDA ba:ADC #8:STA ba       \ move right one pixel, 8 bytes
   STA sd:BCC pb   
      INC ba+1:INC sd+1
      JMP pb                  \ do plotBirdSprite & RTS
.b10                          \ moving R->L
   DEC ba+3                   \ dec x-coord
   SEC: LDA ba:SBC #8         \ move left one pixel, 8 bytes
   STA ba:STA sd:BCS pb
      DEC ba+1:DEC sd+1       \ pass through to plotBirdSprite

\\ pb Plot Bird, draws bird sprites on screen
\\ XOR plotting loop for &17 24 bytes
\\ Inputs: (set above)
\\ sf = sprite from address
\\ sd = sprite destination address
.plot_pigeon_sprite
.pb
{ 
   LDY #&17
.b8            \ XOR plotting loop for &17 24 bytes
   LDA(sf),Y:EOR(sd),Y:STA(sd),Y 
   DEY:BPL b8
   RTS
}

\\ PIG-02.asm below based on    
\\   missing source "G" obtained from dissassembly of G binary file
\\   does background, line graphics.
\\ Andy Frigaard May 2021
\\ labels unknown - set to ddu1, ddu2, etc

\\ Plane is hit
\\ Called from sor, score routine
\\ Inputs: (set above)
\\ sf = sprite from address
\\ sd = sprite destination address
\\ Constants:

\ gex, gun explosion is gex=&1D55 and gex+1=&1D56 
\ &1D40: 31 7A D9 7C C9 77 12 7A C8 7C BA 77 51 7A B8 7C    1zY|Iw.zH|:wQz8|
\ &1D50: 20 7A 42 7A 00 00 00 00 00 00 00 00 00 00 00 00
\ also X% X%=&258D
.ddu1
.plane_hit              \ X%=&258D
   LDY plane_kill_count    \&1D5B            \ plane kill counter
   CPY #&09
   BPL ddu3                \ if > 9 then exit routine &25B7
   LDA plane_table,Y: STA sd     \ setup zp destination
   INY
   LDA plane_table,Y: STA sd+1
   INY
   STY plane_kill_count       \&1D5B

   \ write #&55 to 5 
   LDY #&04             \ loop 5 cycles
   LDA #&55
.ddu2
   STA (sd),Y           \ write  (sd),4  (sd),3...
   DEY: BPL ddu2        \ 

   \ write to (sd),9  (sd),1
   LDY #&09
   ASL A
   STA (sd),Y
   LDY #&01
   LDA #&FF
   STA (sd),Y
.ddu3
   RTS
         \.L25B8

\\ Random generator, was R% 
\\ Called from smain loop after vsync
\\ Inputs: 
\\ ra, ra+1,ra+2 = zp address
.random1          \ psuedo "random" number generator
   LDA ra1
   AND #&48
   ADC #&38
   ASL A: ASL A
   ROL ra1+2 
   ROL ra1+1
   ROL ra1
   LDA ra1
   RTS

\\ start draw_backgnd_art
\\ reads from a table of VDU commands and parameters,
\\ GCOL, PLOT, etc
\\ then uses pp to draw scenry sprites.
\\ Constants:
\ modify_plane_sprite_length = &2C1E  \  SMC length defined in pp routine.
\ backgnd_sprite_addr_table = &27C3  \ part of scenery_line_art
.draw_backgnd_art
{
   LDY #&00
.draw_line_art_loop
   LDA scenery_line_art,Y: JSR oswrch        \&FFEE
   INY
   BNE draw_line_art_loop          \ loop 256 times

   \\ this uses the pp plane sprite routine and modifies that to change
   \\ the byte counter to LDA #&1F: STA &2C1E
   LDA plf: STA sf                     \ initialise zp locations
   LDA plf+1: STA sf+1
   LDA #&1F: STA modify_plane_sprite_length+1      \&2C1E
   LDA #%11000000: STA no              \ store &E0 %11100000 in temp zp
   LDY #&00
\.L25E7

\ loop loads table of values that are source and 
\ destination sprite addresses, writes to zp, runs JSR pp.
\ assumes that source addresses are < &3000, destinations are > &3000, tested with BIT #%11000000
\ BIT sets the Z flag as though the value in the address tested were ANDed with the accumulator. 
\ The N and V flags are set to match bits 7 and 6 respectively in the value stored at the tested address.
.draw_backgnd_sprite_loop
   INY: LDX backgnd_sprite_addr_table,Y           \ address LO; start Y=1
   INY: LDA backgnd_sprite_addr_table,Y           \ address HI 
   BIT no: BNE skip1           \ use BIT to AND with A => all screen address
      STA plf+1: STX plf      \ store source addr for sprite
      INY: LDX backgnd_sprite_addr_table,Y           \ use A & X to move 2 bytes per loop
      INY: LDA backgnd_sprite_addr_table,Y
.skip1 
   STX pos                    \ store destination addr for 'top' row MODE 2, assumes sprite is on one row only
   STA pos+1
   JSR pp               \ &2C08 plot plane sprites
   CPY backgnd_sprite_addr_table           \ Check Y is < #&58, length of list
   BMI draw_backgnd_sprite_loop         \ &25E7
   \ restore default settings for pp plane plot
   LDA #&3F: STA modify_plane_sprite_length+1      \&2C1E
   LDA sf: STA plf
   LDA sf+1: STA plf+1
   RTS
}
   BRK      \filler byte

\\ plot_clouds draws clouds 
\\ Clouds are made up of 3 sections, upper, mid, lower.
\ cloud_sprite_offset_list=&2D5F      \ cloud sprite offset lookup list in GG-02
\.L261A, was  C%
\\ Constants:
cloud_mid_dest_addr = &4400
cloud_sprite_addr= &2EE0                  \ cloud sprite is &2E00 + 256what is this address?
cloud_lower_dest_addr = &4900             \ source address in screen memory
cloud_upper_dest_addr = &4180             \ 4180, 4980, 5180, 5980 ..      destination address in screen memory
.plot_clouds
{
   LDA #HI(cloud_mid_dest_addr)
   STA pos+1                              \ initialise destination zp = cloud_dest_addr
   LDA #&FF
   LDX #&05
   \ fill mid section white outer loop
.mid_outer_loop
   \ fill mid section  white inner loop          
   LDY #LO(cloud_mid_dest_addr): STY pos      \ Y=#&00
.mid_inner_loop
   STA (pos),Y                            \ set to white &FF
   INY: BNE mid_inner_loop                \ repeat 256 times
   INC pos+1
   DEX: BNE mid_outer_loop                \ repeat 5 times
   \ end mid section inner, outer loop

   LDY #&1F                               \ counter, &20 cycles
.cloud_loop2 
   LDA cloud_sprite_addr,Y: STA (pos),Y   \ initialise destination addr zp
   DEY: BPL cloud_loop2            
   LDA #HI(cloud_sprite_addr)     
   STA psta+1                             \ psta is &2Exx, x = $80,$40,$40,$00,...          
   LDA #&20: STA pos

   \ plot cloud sprite outer X loop, 8 cycles
   LDX #&08                               \ offset from cloud_sprite_base_addr
.next_cloud_sprite 
   LDA cloud_sprite_offset_list,X 
   STA psta                                \ setup zp address pointer, $80,$40,$40,$00,...

   \ plot cloud sprite inner Y loop, &40 bytes
   LDY #&3F
.next_cloud_byte   
   LDA (psta),Y
   STA (pos),Y
   DEY
   BPL next_cloud_byte                 \ repeat inner Y loop

   CLC                                 \ add &40 to destination address
   LDA pos: ADC #&40: STA pos: BCC skip1                
      INC pos+1
.skip1
   DEX
   BPL next_cloud_sprite                 \ repeat inner Y loop
   \ end plot cloud sprite loops


   \ plot cloud ??  Y loop, &20,32 bytes
   LDY #&1F
.loop32   
   LDA &2EC0,Y: STA (pos),Y
   DEY: BPL loop32              

   \ plot cloud ??  Y loop 256, X loop 8 cycles
   \\ copies from lower cloud to upper cloud, mirror image plot
.mirror_loop_1     
   LDY #&00
.mirror_loop_2 
   LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
   LDA cloud_lower_dest_addr,Y         \ self modifying SMC below, screen memory location &4900
.modify_upper_dest_addr
   STA cloud_upper_dest_addr,X        \ address modified SMC on each loop &4180
   INY
   DEX: BPL mirror_loop_3 
   CLC                                 \ 16 bit add 08 to ddu17+1 
   LDA modify_upper_dest_addr+1: ADC #&08: 
   STA modify_upper_dest_addr+1                \ 16 bit add &0800 self modifying SMC
   BCC skip2 
      INC modify_upper_dest_addr+2    
.skip2
   CPY #&80
   BNE mirror_loop_2 
   LDA modify_lower_dest_addr+1       \ load HI(cloud_lower_dest_addr)
   EOR #&80                            \ XOR high bit
   STA modify_lower_dest_addr+1       \ self modifying SMC, write HI(cloud_lower_dest_addr)
   BMI skip3 
      INC modify_lower_dest_addr+2     \ &2670
.skip3
   \ check termination when matching MSB of cloud_mid_dest_addr 
   LDA #HI(cloud_mid_dest_addr)         \#&44
   CMP modify_upper_dest_addr+2 
   BNE mirror_loop_1 

   \\ restore the modified addressses for use in the next game level/redraw.
   STY modify_upper_dest_addr+1 
   INX
   STX modify_lower_dest_addr+1        \ self modifying SMC
   LDA #HI(cloud_lower_dest_addr)       \#&49
   STA modify_lower_dest_addr+2        \ self modifying SMC
   LDA #HI(cloud_upper_dest_addr)       \#&41
   STA modify_upper_dest_addr+2         \ self modifying SMC
   RTS
}
\\ Background data for scenery, background sprite locations
\\ starts at .sceneryLineArt
\\ mostly VDU commands. 
\\ 26B0 to 281D was in G-Scene.bin file
.scenery_line_art        
    \ 	Define graphics colour (GCOL a,n)
    EQUB &12, &00, &06      \ cyan
    \ 	PLOT K,x,y 
    EQUB &19, &04, &00, &00, &13, &00
    EQUB &19, &05, &04, &01, &17, &00 
    EQUB &19, &05, &2C, &01, &3C, &00
    EQUB &19, &04, &7E, &04, &3E, &00
    EQUB &19, &05, &1A, &04, &20, &00
    EQUB &19, &05, &84, &03, &20, &00
    EQUB &19, &05, &52, &03, &28, &00
    EQUB &19, &05, &20, &03, &38, &00
    EQUB &19, &05, &16, &03, &46, &00
    EQUB &19, &05, &16, &03, &52, &00
    EQUB &19, &05, &20, &03, &60, &00
    EQUB &19, &05, &52, &03, &74, &00
    EQUB &19, &05, &BB, &03, &7C, &00
    EQUB &19, &04, &7E, &04, &42, &00
    EQUB &19, &15, &1A, &04, &24, &00
    EQUB &19, &15, &84, &03, &24, &00
    EQUB &19, &15, &52, &03, &2C, &00
    EQUB &19, &15, &20, &03, &3C, &00
    EQUB &19, &04, &20, &03, &64, &00
    EQUB &19, &15, &52, &03, &78, &00
    EQUB &19, &15, &BB, &03, &80, &00
    \ 	Define graphics colour (GCOL a,n)
    EQUB &12, &00, &02      \ green
    \ 	PLOT K,x,y 
    EQUB &19, &04, &00, &05, &17, &00
    EQUB &19, &05, &C4, &04, &28, &00
    EQUB &19, &04, &E2, &04, &1C, &00
    EQUB &19, &05, &DE, &03, &38, &00
    EQUB &19, &04, &80, &02, &82, &00
    EQUB &19, &05, &48, &03, &0E, &01
    EQUB &19, &05, &AC, &03, &45, &01
    EQUB &19, &05, &1A, &04, &4A, &01
    EQUB &19, &05, &00, &05, &AE, &01
    EQUB &19, &04, &2C, &01, &C8, &00
    EQUB &19, &05, &8A, &02, &40, &01
    EQUB &19, &05, &3E, &03, &04, &01
    EQUB &19, &04, &F4, &01, &64, &00
    EQUB &19, &05, &FA, &00, &DC, &00
    EQUB &19, &05, &8C, &00, &54, &01
    EQUB &19, &05, &00, &00, &68, &01
    \ 	Define graphics colour (GCOL a,n)
    EQUB &12, &00, &04      \ blue
    \ 	PLOT K,x,y 
    EQUB &19, &04, &9E, &02, &96, &00
    EQUB &19, &15, &F4, &01, &78, &00
    EQUB &19, &05, &58, &02, &64, &00
    EQUB &19, &05, &90, &01, &5A, &00
    EQUB &00         \ 256 bytes
    \ TODO - what is this list? still in use? 27b0
    EQUB &7D, &2D, &20, &13, &28, &A9, &09, &85, &83, &A9, &F0, &85, &82, &4C, &13, &28, &A9, &00, &8D
\.L27C3 

.backgnd_sprite_addr_table
    EQUB &58                  \ first is length of list, 88 bytes, 44 words
    EQUW X_base_addr + &3A0               \ sprite source addr
    EQUW &7393, &7149, &7660, &7599, &7344, &78C9, &76B4 \ destination addrs
    EQUW X_base_addr + &3C0               \ next sprite source addr, ...
    EQUW &7613, &7893, &73C9, &7649, &78E0, &7844, &75C4 \ destination addrs
    EQUW X_base_addr + &3E0      \&1CE0
    EQUW &7B13, &7B4A, &7B60, &7AC4
    EQUW X_base_addr + &400      \&1D00
    EQUW &78B0, &7820, &785C
    EQUW X_base_addr + &420      \&1D20
    EQUW &7800, &7688
    EQUW X_base_addr + &460      \&1D60 
    EQUW &7060
    EQUW X_base_addr + &480      \&1D80
    EQUW &72E0, &7560, &77E0, &7A80, &7AA0, &7ADC
    EQUW X_base_addr + &4A0      \&1DA0 
    EQUw &7A60, &7B30
    EQUW X_base_addr + &4C0      \&1DC0 
    EQUW &7908
    EQUW X_base_addr + &4E0      \&1DE0 
    EQUw &7928
    EQUB &00

.end_PIG_02
PRINT ".end_PIG-02 = ", ~end_PIG_02
