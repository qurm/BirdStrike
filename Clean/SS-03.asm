\ converted from $.S BIRD DISK Side 1
\ (c) Andy Frigaard 1984 to May 2021
\ The SS files were written last and refer to earlier subroutines in PIG, GG files
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains 
\   Main loop & startup routines
\   Score handling and display
\   Musical routines and tune display
\\ AF 29/6/21 New level intialisation uses lookup table avoids Iains unbounded
\\   bug on high levels.  Allows more flexible difficulty model.


\ org     $1E00          \ "P%" as per the original source
\\ Game entry point here
.game
  \ Set Escape Disabled
  LDA #200:LDX #03:LDY #0:JSR osbyte    \OSBYTE &C8 (200) *FX 200 Read/write ESCAPE, BREAK 
  JSR space             
  \ TODO source was missing these 4 line
  \ Added AF 6/6/2021
  LDX #&01: LDA #&04: LDY #&00
  JSR osbyte                  \ OSBYTE 04 Disable cursor editing, X=1
  LDA &20C:STA soun:          \ save OSWORD vector to .soun
  LDA &20D:STA soun+1

.newgame 
  JSR gend                  \ display title screen
  JSR start_game            \ Start - after spacebar, start new game

\\ Game main loop
\\ run, until ESC pressed
.GO           
  JSR random1               \ update "random" numbers for use later R%      
  JSR scr                   \ wait for vsync timing 
  JSR mp                    \ Move planes, mp
  JSR np                    \ New plane, np
  JSR mg                    \ Move gun, mg, player moves?m
  JSR mb                    \ Move bullet
  JSR nb                    \ New bullet, nb, player fires?
  JSR mbo                   \ Move bombs
  JSR nbo                   \ New bombs nbo 
  JSR pg                    \ Move bird, was B%
  JSR gun_hit_display       \ Player Hit processing, was H%
  JSR sor                   \ gravestones, score?
  JSR check_key_press       \ keyboard inputs, was opt

  JMP GO

  EQUS "(c)A.E.Frigaard 1984 Hello!"

\\ Define lists for any parameters changing over 8 levels
\\ USed in ..  uses Level 8 for all subsequent
.level_de
EQUB 30, 30, 28, 28, 26, 26, 24, 24    \ -2 on odd levels

.level_bullet_count   \ allow up to 4 x 4 byte bullets - must modify list length too, 6,10, 8?
EQUB 8, 8, 12, 16, 16, 16, 16, 16
.level_bullet_interval 
EQUB 6, 8, 12, 12, 12, 12, 12, 12
.level_bomb_count 
\EQUB 2, 2, 4, 4, 2, 2, 4, 4  
EQUB 3, 4, 5, 4, 4, 4, 4, 4  
.level_inb
.level_bomb_interval
\EQUB &EF,&EF,&EE,&EE,&ED,&ED,&EC,&EC
EQUB &EC,&EB,&EA,&E9,&ED,&ED,&EC,&EC
\timer=C => room for 3 on screen

\\ try one plane per level to speed up testing.

\\ Start new game, was .S%
\\ Intialise variables, setup screem
\\ Called for every new game (not each level)
.start_game                           
  LDA #5:STA no:JSR def_envelopes     \ Store 5 at counter, call define envelope E%
  LDA #&49:JSR tune                   \ play starting tune
  LDA #22:JSR oswrch                  \ select MODE 2 via OSWRCH
  LDA #2:JSR oswrch     
  \ intialise to zero counters, scores
  LDA #0:STA exg3:STA cnt:STA fc:STA picn:STA gex:STA sc+1:STA sc+2:STA plf:CLC
  \LDA #32:STA de
  LDA #3:STA ti       \ ti=de+1 initial timer value first plane to fly
  LDA #42:STA ti+1    \ default timer value  was de+2, subsequent timer 
  LDA #2:STA bfg

  LDA #LO(bullet_list):STA bulst
  LDA #HI(bullet_list):STA bulst+1
  LDA #LO(bomb_list):STA bost
  LDA #HI(bomb_list):STA bost+1
  LDA #LO(plane_list):STA pls
  LDA #HI(plane_list):STA pls+1

\\ Setup screen colours - load palette
  LDX #15:LDY #7
.co1 
  JSR def_log_colour           \ JSR call 8 times, decrementing X, was D%
  DEX: CPX #7:BNE co1

  STX ra1          \ save X 7 in ra1

  LDA #player_live_init:STA gex+1        \\ player lives, 3
  \ LDA #&2F:STA plf+1
  LDA #HI(plane_sprite_addr):STA plf+1    \ LO addresses set per game frame

  \\ new level intialisation AF 29/6/21
  \\ not reqd
  \LDA #&F0:STA inb        \\ flag 1111 0000
  \LDA #0:STA tm+1         \\ used for bomb list counter start (0),2,3 AF try 2

\\    init, L1, L2, L3, ..
\\ de   32, 30, 30, 28    \ -2 on odd levels
\\ ti   03
\\ ti+1 42
\\ bfg? 02
\\ tm
\\ tm+1  0, 2, 2, 4, 4               \bomb list counter start 
\\ ra?
\\ tune
\\ fc   00, 01, 02, 03
\\ inb &F0,&EF,&EF,&EE,&EE,
\\ gex+1 03         \player lives, no change


\\ Begin Level (next frame)
\\ TO DO - Iains fix here
\ de=&2D79  initialised with !de=&400314 (3 bytes, ti=&40)
.bf 
  JSR cht                   \ call Change Tune, returns A=? X=?
  STX nl:INC fc:            \ increment frame counter, game level  X=7??
  \LDA de:CMP #15:BMI b0:    \ if de, difficulty < 15, go .b0  (branch if minus)
  \LDA fc:AND #1:BEQ b0      \ else if level is odd (1,3,5)
  \DEC de:DEC de:            \ then decrement x 2 de
  \DEC inb                   \ and decrement inb
\.b0                        \ IainFM: I also moved the .b0 label in SS-03.asm. That seems to have cured the bug, although I've not tested it to destruction yet!
  \INC tm+1:INC tm+1:        \ inc x 2 tm+1, this is default timer?  Add 2 more bomb per level?
  \TODO check bounds, also only two bombs shown on level 1 even with 4

  \ initialise lists by clearing to zero
  \ &54 bytes covers bullet_list, plane_list, bomb_list - can extend this:
  LDY #cloud_sprite_offset_list - bullet_list -1
.b1 
  STA bullet_list,Y: DEY: BNE b1      \ clear &54 bytes at &2D0A (bullet_list set to 0)


.b0
  LDA #12:JSR oswrch              \ OSWRCH clear the screen
  LDA #154:LDX #20:JSR osbyte     \ OSBYTE Write to video ULA control register and OS copy 
  JSR plot_clouds                 \ Draw the clouds, was C%
  JSR draw_backgnd_art            \ Draw the vector art, V%
  JSR stv                         \ Draw the musical stave, stv?
  JSR score_update_screen         \ Write the score to screen

  
  LDA #0:STA plane_kill_count:
  STA sc:STA ba+1

  \\ new level intialisation AF 29/6/21
  LDY fc: DEY               \ zero based , first level=0
  LDA level_de,Y: STA de
  LDA level_bomb_interval,Y
  STA inb
  LDA level_bomb_count,Y
  \STA tm+1:  \LDA tm+1:
  STA bomb_list              \ allow up to 4 bombs
  LDA level_bullet_count,Y
  STA bullet_list             \ allow up to 4 x 4 byte bullets - must modify list length too, 6,10, 8?
  LDA #30:                    \ TEST set to 10, 2 planes
  STA plane_list              \ allow up to 6 x 5 byte planes AF TEST was 30

  \LDA tm+1:STA bomb_list              \ allow up to 2? bombs
  \LDA #12:STA bullet_list             \ allow up to 4 x 4 byte bullets - must modify list length too, 6,10, 8?
  \LDA #10:STA plane_list              \ allow up to 7 x 4 byte planes AF TEST was 30
  note_screen_addr = &3088
  gun_screen_addr = &3280             \ or 3288?
  LDA #LO(note_screen_addr):STA not
  LDA #HI(note_screen_addr):STA not+1
  LDA #LO(gun_screen_addr):STA gex+2  \TO do - more related init below? is this needed?
  LDA #HI(gun_screen_addr):STA gex+3:
  
  \\ draw initial player gun indicators
  LDX gex+1                   \ number of player guns
.pmi 
  JSR mini                    \ draw mini gun indicator top left
  CLC
  LDA gex+2:ADC #&18:STA gex+2
  DEX:BNE pmi                 \ loop for no of guns

  \\ draw initial planes
  plane_screen_addr = &3A81     \ TODO - this is not an address
  LDA #HI(plane_screen_addr):STA sd+1   \ sd not used in intialisation
  LDA #LO(plane_screen_addr):STA sf     \ odd, uses sf as a temp workspace
  LDX#1:LDY#8
.pp1                            \TODO use of sf seems incomplete?  inspect list?
  LDA #LO(plane_screen_addr)    \ #&81
  STA plane_list,X              \ LO address element 1
  INX:TYA                       \ Y = 8, copy to A
  CLC
  ADC #&50:STA plane_list,X     \ add 8+50, &58, LO address=element 2
  TAY:INX                       \ y=&58  , Y is temp store A during loop
  LDA sd+1:ADC #0               \ add 16 bit carry
  STA plane_list,X: STA sd+1    \  HI address=element 3
  CLC:INX
  LDA sf:ADC #10      
  STA sf:STA plane_list,X       \  81, 95, 9F, A9, B3, BD = element 4 psta?
  INX
  LDA #&D0:STA plane_list,X     \ y-coord? &D0 - sort of flag, sprite offset?
  \TODO use BCC compare with 30, use bullet_list 
  INX:CPX #31:BMI pp1           \ loop 6 times, X inc 5 each cycle
  \INX:CPX #16:BMI pp1           \ loop 6 times, X inc 5 each cycle  AF TEST

  LDY #0
  LDA (pls),Y:STA no            \ plane_list, 0 is &1E,30 = 6 planes, 5 bytes
.slop 
  INY:
  INY:LDA (pls),Y:STA pos       \ zp plane pointer to plane_list, screen address
  INY:LDA (pls),Y:STA pos+1
  JSR pp                        \ plots initial plane, 6 times
  INY:INY:CPY no:BMI slop
  JSR h7

 \ gun_sprite_addr = &2358
  gun_init_screen_addr = &7E90
.sgun                   \ Setup gun, initial screen position etc
.player_gun_initialise
  LDA #32: STA Xg:      \ Gun X position
  LDA #HI(gun_init_screen_addr):STA gunp+1:  \ Gun position address MSB
  LDA #LO(gun_init_screen_addr):STA gunp:    \ Gun position address LSB
  LDA #HI(gun_sprite_addr):STA gun+4:       \ Modify Gun sprite address MSB
  LDA #LO(gun_sprite_addr):STA gun+3:       \ Modify Gun sprite address LSB
  JSR gun:              \ .gun in OLDSRCE, is modified by above lines.

  LDA #&40:JMP tune   \play tune &40

\\ Calculate the Score 
\\ Input:
\ sc is a bitwise flag showing the events that have occurred in this last cycle
\ sc = &01 : Unused?  Set in nb, when firing bullet
\ sc = &02 : Plane killed / +15(0) points 
\ sc = &10 : Pigeon killed (note added to stave / +10(0) points)
\ sc = &20 : Set in mg, move_gun when hit, detected in gun_hit_display before .sor
\ sc = &40 : Plane Wing has been hit (pigeon release / +1(0) points)
\ sc = &80 : Level is complete (load next level / +0 points)
\ Output:
\ sc is cleared = 0
\ sc+1  increased
\ sc+2  increased
.score_exit
  RTS
.sor
{ 
  \LDA sc:BEQ score_update_screen  \ if zero, no score events
  LDA sc:BEQ score_exit     \ if zero, no score events, so exit
  SED                       \ decimal scoring
  AND #2:BEQ s1             \ bit 1 not set
  CLC:LDA #&15              \ score for plane 15 => 150
  ADC sc+1:STA sc+1         \ 16 bit add dec 15 to sc+1
  LDA sc+2:ADC #0:STA sc+2
  JSR plane_hit             \ was X%   

.s1        
  LDA #&40:BIT sc:BEQ s4    \ bit 6 not set
  CLC:LDA #1 
.wng                        \ score for plane wing 1 => 10
  ADC sc+1:STA sc+1:        \ 16 bit add dec 1 to sc+1
  LDA sc+2:ADC #0:STA sc+2
  CLD
  LDX #LO(bsou):LDY#HI(bsou)
  LDA #7:JSR osword          \OSWORD - A=7 SOUND command at bsou
  SED

.s4 
  LDA #&10:BIT sc:BEQ s2
  CLC:LDA #10 
.pig                          \ score for pigeon 10 => 100
  ADC sc+1:STA sc+1           \ 16 bit add dec 10 to sc+1
  LDA sc+2:ADC#0:STA sc+2
  CLD:
  JSR nxno:BNE s2             \ add next Note, check bonus?
  JSR bon                     \ do bonus

.s2 
  CLD:JSR exg                 \ check for extra player?
  LDA sc:BPL s3
  JMP ef
.s3 
  LDA #0:STA sc             \ clear score byte for next cycle
                            \ fall through to display score
\  RTS 
\ sor end

\\ Writes the score to screen
\\ calls plot_score with A=Sprite offset
\\ each call to plot_score increases SD address for next digit
score_sprite_dest=&34B0
.s7
.score_update_screen 
  LDA #HI(score_sprite_dest):STA sd+1:
  LDA #LO(score_sprite_dest):STA sd:
  LDA #HI(score_sprite_base):STA sf+1:
  \ NNxxx digits
  LDA #&F0:AND sc+2:JSR plot_score
  LDA #&F:AND sc+2:ASLA:ASLA:ASLA:ASLA:JSR plot_score
  \ xxNNx digits
  LDA #&F0:AND sc+1:JSR plot_score
  LDA #&F:AND sc+1:ASLA:ASLA:ASLA:ASLA:JSR plot_score
  \ xxxxN final digit, always 0
  LDA #0:JMP plot_score
}
\\ Scoring - check for extra player
\\ Called from: Calculate the Score 
\\ routine was moved from SS-01 to go with score routines here
\\ TODO - monitor use of exg3 location/flag, move to variable
.extra_player_check
.exg 
{
  LDA #1:BIT exg3:BNE exg1
  LDY sc+2:CPY #5:BMI exg2
  ORA exg3:STA exg3:JSR exg4
.exg1 
  LDA #2:BIT exg3:BNE exg2
  LDY sc+2:CPY #&10:BMI exg2      \ if score over 10000?
  ORA exg3:STA exg3:JMP exg4      \ then store in exg3
.exg2 
  RTS:
.*exg3 
  EQUB 0
.exg4 
  JSR mini
  LDA #220:STA sound_note_volume      \  &2DFC
  LDX #LO(sound_note):LDY#HI(sound_note)   
  LDA#7:JSR osword                    \ OSWORD - A=7 SOUND command at &2DF8
  INC gex+1:CLC
  LDA gex+2:ADC #&18                  \ set sprite screen position one right
  STA gex+2:BCC exg5
      INC gex+3
.exg5 
  RTS
}
\\ End of Scoring - check for extra player


\\ Delay timer routine, uses vsync 20ms delay
\\ input in A=n, Y preserved, n x 20ms delay
\\ output original Y (also in A)
.delay 
  STA tm+2              \store counter in tm+2
  TYA:PHA               \save Y
.del1 
  JSR scr               \vsync 20ms delay
  DEC tm+2:BNE del1     \iterate until zero
  PLA:TAY:RTS           \restore Y, return
\\ end delay


\\ Next level setup 
\\ Called from score routine
\\ Calls
.next_level
.ef 
  LDA #0:STA sc             \ clear score byte for next cycle
  CLC:
  LDA plf: ADC#&40:STA plf    \ plf = next plane from sprite address
  LDA #100:JSR delay:         \ pause
  JMP bf                      \ play next frame/level
\\ End of Next level setup 


\\ Choose Tune, Change Tune parameters in A, X 
\\ input fc parameters
\\ output in A, X to control tune pointers?
.cht 
    LDA #3:AND fc:TAX:BNE ct1     \ if frame counter is 0, 4, 8
    LDA #&33:RTS                  \ then return A=&33, X=fc
.ct1      \TODO - A, X mixed up here?
  DEX:BNE ct2                     \ else if frame counter 1
  TXA:LDX#13:RTS                  \ then return A=fc-1, X=13
.ct2 
  DEX:BNE ct3                     \ else if frame counter 2
  LDA #17:LDX #26:RTS             \ then return A=17, X=26
.ct3 
  LDA#34:LDX#38                  \ else fc 3, then return A=34, X=38
  RTS
\\ End of Choose Tune


\\ Patch for Move Plane - improved randomness
\\ Called from mp
\\ DONE moved into mp routine
\.patch 
\  LDA ra1:BPL patch2:
\  LDA sd:EOR #&C0:STA sd          \ XOR top bit of address
\.patch2 
\  LDA de                         \dirn when above
\  RTS
\\ End of Patch for Move Plane 


\\ Plot Next Note 
\\ Calls pno, plot_note
\ uses .nl lookup table
\ nl,0 used for pointer to next note
\ nl,Y used for ..
.nxno 
  INC nl:LDY nl               \ inc note pointer
  LDA nl,Y:STA no
  AND #&E:
  CMP #8:BPL n1
    CLC:ADC not:STA sd
    LDA #0:BEQ n2             \ always
.n1 
  CLC:ADC not:ADC #&78:STA sd   \ 16 bit add &0278, next row
  LDA #2
.n2 
  ADC not+1:STA sd+1           \ store sprite destination
  LDA #HI(note_sprite_addr)     \ &23
  STA sf+1
  JSR chnot
  CLC
  LDA not:ADC #&20:STA not     \ add &20 to sprite from
  BCC n3
    INC not+1
.n3 
  JSR pno                       \ plot_note
  CLC
  LDA sd:ADC#8:STA sd          \ 16 bit add 8 to sprite destination
  BCC n4:
    INC sd+1
.n4 
  CLC
  LDA sf:ADC #8:STA sf          \ 16 bit add 8 to sprite from
  BCC n5
    INC sf+1
.n5 
  JSR pno                       \ plot_note
  INY:LDA nl,Y
  RTS


\\ Choose Note sprite to display
\\ 2300 start of notes sprites to last 2340
\\ Shift A, compare with "no" bitwise
\\ find the case based on bit set in "no"
.chnot 
  LDA #&80:BIT no:BEQ c1      \ A = b1000 0000, set sf=&2300
  LDA #0:STA sf:RTS
.c1 
  LSRA: BIT no:BEQ c2         \ A = b0100 0000, set sf=&2310
  LDA #&10:STA sf:RTS
.c2 
  LSRA: BIT no:BEQ c3         \ A = b0010 0000, set sf=&2320
  LDA #&20:STA sf:RTS
.c3 
  LSRA: BIT no:BEQ c4         \ A = b0001 0000, set sf=&2330
  LDA #&30:STA sf:RTS
.c4 
  LDA #1:BIT no:BEQ c5        \ A = b0000 1000, set sf=&2340
  LDA #&40:STA sf
.c5 
  RTS

\\ plot note on stave
\\ uses ORA plotting, not XOR, to ensure colours are true.
.pno TYA:PHA:LDY #7
  CLC:LDA sd:ADC #&78:STA st:
  LDA sd+1:ADC #2:STA st+1
  LDA sd:AND #7:EOR #7:STA mod
  CMP #7:BPL pntop
.pnbot                  \ renamed bot to pnbot
  LDA(sf),Y:ORA(st),Y:STA(st),Y
  DEY:CPY mod:BNE pnbot
.pntop 
  LDA(sf),Y:ORA(sd),Y:STA(sd),Y
  DEY:BPL pntop
  PLA:TAY:RTS

\\ Play the tune, pass in a parameter A, return X as 0 if pressed
\\ Player can press space/any key to cut short the tune and continue play.
\\ input A is Note, no, pointer to the tl (tune list) table
\\ for example: &40
\\ &2DF8 is start of OSWORD 7 parameter block, with these defaults:
\\.L2DF8 EQUB    $01,$00
\\.L2DFA EQUB    $05,$00      \OSWORD docs say &FF for MSBsound 
\\.L2DFC EQUB    $49,$00
\\.L2DFE EQUB    $0F,$00
\\ only update these: 2DFC = Pitch LSB, 2DFE = duration LSB
.playTune
.tune 
  STA no:
\ iterate through tl, Tune List, LDA tl,Y until zero value terminator
\ no is the note counter, pointer to the tl (tune list) table
.t1 
  LDY no:LDA tl,Y: BEQ t3             \ get next note, 
  STA sound_note_volume:INY:
  LDA tl,Y:STA sound_note_pitch        \ store tune in OSWORD 7 parameter block
  LDX #LO(sound_note):LDY #HI(sound_note)
  LDA #7:JSR osword                   \ OSWORD - A=7 SOUND command at &2DF8
  INC no:INC no:JMP t1                \ increment Y + 2, loop
   
.t3                                   \ loop get sound, until Sound channel is clear?  < 15
  LDA #&80:LDX #250:JSR osbyte        \ OSBYTE 128 Get Sound Channel 1 buffer status in Y
  CPX #15:BMI t3                      \ X contains spaces in sound buffer, loop until buffer is empty
  RTS                                 \ then tune has played, can return.

\\ Keyboard scan - check for key press
\\ input X = negative INKEY value, Y set to FF 
\\ output X = X and Y contain &FF if the key being scanned is pressed.
.keyboardScan
.key 
  LDA #&81:LDY #&FF:JSR osbyte      \ OSBYTE 129 Read key, keyboard scan for X (value?)
  INX:RTS                           \ X is &FF is pressed, so INX to 0, return
\ INX:RTS               \ AF 7/6/21 added padding to align diffs, dead code

\\ Check Key presses for user input
\\ Called from main loop after all screen routines, moved from SS-01
\\ Calls JSR key, OSBYTE
\\ Note this writes OSWORD vector at &20C, turning sound on and off.
\\ checking for R, S, Q on keyboard
.check_key_press
.opt 
{
.checkQkey
  LDX #&EF:JSR key:BNE op1          \ EF=-17 INKEY Q, Quiet
  LDA #LO(mute):STA &20C            \ rewrite OSWORD vector to below .mute
  LDA #HI(mute):STA &20D
.op1 
.checkSkey
  LDX #&AE:JSR key:BNE op2           \ AE=-82 INKEY S, Sound
  LDA soun:STA &20C:
  LDA soun+1:STA &20D
.op2 
.checkRkey
  LDX #&CC:JSR key:BNE op5          \ CC=-52 INKEY R, Rest
.op3  
  LDA #&81:LDY #1:LDX #0:JSR osbyte:  \OSBYTE 129 Read key, scan for 1s, keyboard scan for X (value?)
  BCS op3:        \If Carry is set, no key, loop
  CPX #82:        \82 = R
  BEQ op3         \If R pressed, loop, else RTS
.op5 
.checkKeyComplete
  RTS
  
.mute                               \ OSWORD vector points here when Q/mute
    CMP #07:BEQ op5                 \ exit if OSWORD &07
.mu1 
  JMP(soun)
}
\TODO move this to a memory location, is populated on game startup
.soun                               \ OSWORD vector restored from here
  EQUW &E7EB
\\ End of Check Key presses for user input



  .end_SS_03
  PRINT ".end_SS_03 = ", ~end_SS_03
