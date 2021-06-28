\ converted from $.PIGSRCE BIRD DISK Side 1
\ (c) Andy Frigaard 1984 to May 2021
\ The PIG files were written later (1983-4) based on $.PIGSRCE and were a playable game with
\ some missing features, a main loop calling routines from OLDSRCE.  The main loop was later 
\ overwritten and only the subroutines used.
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains
\  Plot player gun indicator

\ ORG = &21B8      \ P% = &21B8

\ AF 6/6/2021 moved to top to align to Iains
\TODO minor differences here in .mini
\ from here appears in G at 2223

\\ Plot player gun indicator (small sprite, top left) initially
\mini_gun_sprite_addr= &1910               \ temp player gun sprite &1928 or &1910
.mini
.plot_gun_life_indicator 
\    LDA #&C0:STA sf:LDA#9:STA sf+1:
   LDA #LO(mini_gun_sprite_addr):STA sf
   LDA #HI(mini_gun_sprite_addr):STA sf+1    \ IFM - LDA#19->LDA#&19 lives sprite ptr fix
   LDA gex+2:STA sd                          \ initial destination
   LDA gex+3:STA sd+1
   JMP plot_pigeon_sprite                    \ share pigeon sprite routine                 

\\ from here appears in G at &2238
\\ Player Hit display,  also named H%
\\ Called from main loop, after all moves, before score.
.gun_hit_display
.h0      
   LDA #&20:BIT sc:BNE h1                    \ if bit is set then hit, e
   LDA gex:BNE h12                           \ gex counts down from &FF to zero
.hreturn
   RTS      \2244   60         RTS
.h1 
   LDX #0:LDY#7:JSR def_log_colour           \ define background as white? temp flash.
   LDA #7:LDY #HI(sound_player_hit):LDX #LO(sound_player_hit):JSR osword       \ Sound  sound_player_hit
   LDA #&FF:STA gex                          \ counter for explosion
   LDA #&60:STA nbo:STA np:STA mg:STA nb     \ this stores RTS in each routine, disabling them SMC
   JSR plot_gun_sprite                       \ un-draw sprite was .gun
   \ AF align to published as LDA #&1A , was LDA #&A
   LDA #HI(other_sprite_addr):STA gun+4
   LDA #LO(other_sprite_addr):STA gun+3        \ modify code with sprite source as &1A10, gun_sprite_addr
   JMP plot_gun_sprite                       \ re-draw sprite was .gun, exit.
.h12 
   DEC gex:LDA gex:CMP #254:BNE h3           \ gex, gun explosion, during which does not move etc
   LDX #0:LDY #0:JMP def_log_colour          \ define background as white? temp flash.
.h3 
   CMP #&DC:BNE h4:JSR plot_gun_sprite       \ show next different sprite offset, animation.
   LDA #&38:STA gun+3:JMP plot_gun_sprite
.h4 
   CMP #&8C:BNE h5:JSR plot_gun_sprite        \ show next different sprite offset, animation.
   LDA #&60:STA gun+3:JMP plot_gun_sprite
.h5         \ 22A7   C9 01      CMP #&01
   CMP #1:BNE hreturn:                       \ final counter = 1, then 
\ TODO differences with Ians source added lines 
    DEC gex+1           \ &1D56              \ dec and check player lives >0
    BNE h5a             \ added &22B3
    JMP game_over       \ gov             \ &14AE       \ added
.h5a
    JSR plot_gun_sprite
    JSR sgun            \ added

   LDY plane_list                \ process the plane list and if any have exp = C0 then un-draw
.h6 
   LDA(pls),Y:CMP #&C0:BNE h8
   DEY:LDA(pls),Y:BPL h9
   EOR #&80:STA(pls),Y
   DEY:LDA(pls),Y:STA pos+1
   DEY:LDA(pls),Y:STA pos
   JSR plot_plane
   JMP h10
.h8 DEY:
.h9 DEY:DEY:
.h10 DEY:DEY:BNE h6
.h7                              \ modify these routines, replacing RTS with the NOP opcode, &EA
   LDA #&EA:STA nbo:STA nb:STA np :STA mg

   \ AF 6/6/2021 removed this line
   \  DEC gex+1:BEQ govX                   \ renamed govX but .gov is in SS, so cannot BEQ that far
                                        \ is this realy used?
   SEC:
   LDA gex+2:SBC #&18                  \ set sprite screen position one left; was SBC#&20 
   \ AF 6/6/2021 changed to JMP, was :JSR mini
   STA gex+2:JMP mini

.end_PIG_01
PRINT ".end_PIG-01 = ", ~end_PIG_01

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\   
\\ section is overwritten with data .nl, .tl, etc up to B%
\ AF 6/6/2021 removed this line
\   JMP sgun

\ AF 6/6/2021 removed this line
\.govX 
\    PLA:PLA:RTS

\ from here appears in G at &2223
\ ie different order
\ AF 6/6/2021 moved to top
\ .mini 
\    LDA #&C0:STA sf:LDA#9:STA sf+1:
\    LDA gex+2:STA sd:
\    LDA gex+3:STA sd+1
\    JMP pb

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 
\ also in SS.asm
\ PIG.asm:56: error: Branch out of range. 
\ (Branch distance is -3411 bytes; 3283 more than the maximum -128.)
\ renamed stp4 tp stp4b
\ AF 6/6/2021 removed this line
\ now branch to hreturn instead
\.stp4b RTS
\.stp6
\    LDA gex:BEQ stp4:LDA psta:EOR #&80:STA psta
\    PLA:PLA:JMP fo+3
   
