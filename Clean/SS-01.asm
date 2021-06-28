\ converted from $.S BIRD DISK Side 1
\ (c) Andy Frigaard 1984 to May 2021
\ The SS files were written last (1984) and refer to earlier subroutines in PIG, GG files.
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains 
\   Main loop keyboard handling
\   Patches that modify or are called by earlier code.
\   Bonus routines
\   Game entry screen, logo, high score in MODE 7 teletext data

\ ORG  $1400          \ "P%" as per the original source

  \ AF: Last few chars of this string may have been used for padding to adjust some location
  EQUS "Thanks David,Ian,Martin,Mum,Dad,Susi C"

\\ Check Plane right bounds, do movement?
\\ Called from GG-02 Plane function - as a patch?
\\ TODO relocate this to the Plane routine in GG-02
\\ Calls JSR fo (plane plotting)
\        .nlr                \ Move enemy / check left bound
\        {
\          LDA tog:BEQ enlr:LDA exp:BPL rt
\          DEC psta:SEC:LDA pos:SBC#8:STA pos:BCS enlr
\          DEC pos+1:JMP enlr
\        .rt                 \ Check right bound
\          INC psta:CLC
\          LDA pos:ADC #8:STA pos
\          BCC enlr
\            INC pos+1
\        .enlr 
\          LDA #01:EOR tog:STA tog
\          JMP fo                          \ plane plotting
\        .tog 
\          EQUB 0                       \ toggle byte, 0/1
\        }


\\ fpat - Fire patch - bullet counter?
\\ Called from New bullet, nb, player fires, added afterwards?
\\ TODO relocate this to the New bullet GG-02; create new counter addr for fp0
\\ Calls 
\\ Inputs
\\ Outputs
\\ Sets values for fp0 counter
\    .fpat
\    {
\      LDA fp0:BEQ fp1             \ decrement counter, return if > 0
\      DEC fp0:RTS
\    .fp1 
\      LDA #18:STA fp0             \ reset counter to 18
\      JMP nwb_patch_return        \ &297D
\    }
\    .fp0 
\      EQUB 0                      \ modified above
\\ End of fpat - Fire patch 

\\ game_over - Display GAME OVER message, and 
\\ Called from gun_hit_display, after last player killed.
\\ Calls newgame
\\ Inputs
\\ Outputs
.game_over
.gov 
{
  PLA:PLA                        \ pull stack, will not return to calling routine
  LDY#255
.gov1                            \ Spell out GAME OVER slowly, delay between characters
  INY:LDA #10:JSR delay          \ delay for 10x20 = 200ms
  LDA gov2,Y:JSR oswrch          \ 'R' is last character
  CMP #82: BNE gov1              \ loop through
  LDA #150:JSR delay
  JMP newgame

.gov2 
  EQUB &1F, &05, &0F              \ oswrch, move cursor to &05, &0F, COL 1
  EQUB &11, &01                   \ oswrch, set COL 1
  \EQUD &110F051F                
  \EQUB 1:
  EQUS "GAME OVER"
}
\\ End of game_over - Display GAME OVER message


\\ Move plane patch or additional logic
\\ Called from Move plane  see PIG-01
\\ DONE Moved this into calling routine in GG-02
  \.stp4 
  \  RTS
  \.stp6 
  \  LDA gex:BEQ stp4
  \  LDA psta:EOR #&80:STA psta:INC exp \ bug! old source check for bounds?
  \  PLA:PLA                         \ pull return address from stack
  \  JMP fo+3
\\ End of 



\\ Bonus routine
\\ Bonus completed, reward by playing the tune  
\\ Called from 
.bon
{
  LDA fc:AND #3:BNE bon0    \ load frame/level counter, if 0,4,8,.. 
  LDA #15:JSR delay         \ then pause, delay for 15x20 = 300ms
  JSR stmv:JMP bon11        \ do stmv , draw tune, then play tune.
.bon0                       \ Choose tune, based on frame counter, play tune
  JSR cht:JSR tune
.bon11 
  JSR wbmsg:LDY #75:
.bon1 
  SED:CLC:
  LDA sc+1:ADC#2:STA sc+1:LDA sc+2:ADC#0:STA sc+2 \ Add 2 to score
  CLD
  LDA #2:JSR delay                          \ then delay for 2x20 = 40ms
  TYA:PHA
  LDX #LO(sound_bonus):LDY#HI(sound_bonus) 
  LDA#7:JSR osword                          \ OSWORD - A=7 SOUND command at &2DF8
  JSR score_update_screen                   \ display score
  PLA:TAY:DEY:BNE bon1
  INC bsou
  LDX #LO(bsou):LDY#HI(bsou)              \sound defined below
  LDA#7:JSR osword                       \OSWORD - A=7 SOUND command at bsou
  DEC bsou
  LDA #&80:ORA sc:STA sc                    \ set score flag
  RTS
}

\\ Write Bonus message

.wbmsg 
{  
  LDY #0:
.wb1 
  LDA bmsg,Y:JSR &FFEE:       \ iterate through 0 to 10 char
  INY:CPY #11:BNE wb1: RTS
.bmsg 
  EQUD &071F0611: EQUB &F      \ Mode 7, Cyan text, centred
  EQUS "BONUS!"               \ message
}

\ Moved to end GG02, with other Sounds
\ Bonus Sound definition for OSWORD 7, SOUND call
\ parameter block, 8 bytes
\ SOUND &0012, &FFFF, 0, 0
\.bsou 
\  EQUD &FFFF0012 
\  EQUD 0
\  EQUB &FF        \padding added AF 7/6/21 to align to published


\\ Start of HSTRS file, MODE 7 bytes
\\
\\ nbk Name parameter Block for OSWORD call to read user name
.nbk    \=&15C0       \EQUB    $B4,$16,$08,$20,$7F
EQUB &B4, &16, &08, &20, &7F
\\ High Score, 3 bytes, Initially 0200 00
.hs    \=&15C5
EQUB &00, &00, &02
\\ Mode 7 title screen
.m7     \=&15C8
EQUB &16, &07, &17, &00, &0A, &20, &00, &00
EQUB &00, &00, &00, &00
\\ Bird Strike logo, in teletext characters
\\ Copyright, High score etc
.bsk    \=&15D4:
EQUB &9A, &94, &68, &3F, &6F, &34, &20, &20, &20, &20, &20, &20
EQUB &20, &20, &FF, &20, &20, &5F, &7E, &2F, &6D, &20, &78, &20, &20, &20, &20, &20
EQUB &20, &20, &7E, &0D, &9A, &96, &6A, &7D, &7E, &25, &20, &2F, &20, &30, &20, &20
EQUB &20, &20, &FF, &20, &20, &6A, &7D, &70, &30, &20, &FF, &2C, &20, &30, &20, &20
EQUB &2F, &20, &FF, &5F, &3E, &0D, &9A, &94, &6A, &3F, &60, &6F, &34, &FF, &20, &FF
EQUB &2F, &21, &78, &2F, &FF, &20, &20, &20, &60, &60, &FF, &20, &FF, &20, &20, &FF
EQUB &2F, &21, &FF, &20, &FF, &6F, &30, &20, &7E, &7B, &34, &0D, &9A, &96, &2A, &7D
EQUB &70, &7E, &25, &6F, &30, &FF, &20, &20, &6F, &7C, &3F, &20, &20, &2A, &7C, &7E
EQUB &27, &20, &6F, &74, &30, &FF, &20, &20, &6F, &30, &FF, &20, &2B, &34, &6D, &78
EQUB &24, &1F, &05, &05, &82, &46, &49, &52, &45, &46, &4C, &59, &20, &28, &63, &29
EQUB &20, &41, &6E, &64, &72, &65, &77, &20, &46, &72, &69, &67, &61, &61, &72, &64
EQUB &0D, &1F, &0B, &08, &8D, &83, &48, &69, &67, &68, &20, &53, &63, &6F, &72, &65
EQUB &1F, &0B, &09, &8D, &83, &48, &69, &67, &68, &20, &53, &63, &6F, &72, &65, &00
\\ dots .... string
.dts    \=&16A0
.dots_str
EQUB &1F, &0B, &0B, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E
EQUB &00, &1F, &19, &0B
\\ High score Name string - rewritable
.nam    \=&16B4:
EQUB &61, &6E, &64, &72, &65, &77, &20, &20, &00
\\ Instructions strings
.ints   \=&16BD
.instructions_str
EQUB &1F, &0E, &0E
EQUB &8D, &83, &4B, &65, &79, &73, &1F, &0E, &0F, &8D, &83, &4B, &65, &79, &73, &1F
EQUB &06, &11, &86, &5A, &20, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E
EQUB &2E, &20, &6D, &6F, &76, &65, &20, &6C, &65, &66, &74, &1F, &06, &12, &86, &58
EQUB &20, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &20, &6D, &6F, &76
EQUB &65, &20, &72, &69, &67, &68, &74, &1F, &06, &13, &86, &52, &45, &54, &55, &52
EQUB &4E, &20, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &20, &73, &68
EQUB &6F, &6F, &74, &1F, &06, &14, &86, &53, &2F, &51, &20, &2E, &2E, &2E, &2E, &2E
EQUB &2E, &2E, &20, &73, &6F, &75, &6E, &64, &20, &6F, &6E, &2F, &6F, &66, &66, &1F
EQUB &06, &15, &86, &52, &20, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E, &2E
EQUB &2E, &2E, &2E, &2E, &2E, &2E, &20, &72, &65, &73, &74, &00 
\ Press space to play string
.sps    \=&175C
EQUB &1F, &07, &18, &81
EQUB &88, &50, &72, &65, &73, &73, &20, &73, &70, &61, &63, &65, &20, &74, &6F, &20
EQUB &70, &6C, &61, &79, &2E, &00
\ end of HSTRS

\\ Start of SS-02 lines.
\\ Was at ORG $1778 

\\ Draw Musical Staves, Notes, Play Tune
\\ Called from Bonus routine, SS-01
\\ Calls JSR stv in GG-01
\\ Inputs: 
\\ stm = ??
\\ Constants:
\stave_base_addr = &80..
.stmv 
  LDY #10                  \ set offset 10
.stm4 
  LDA stm10,Y: JSR oswrch   \ OSWRCH Write character stm10,Y
  DEY:BPL stm4                  \ branch if positive, loop
  \self modifying code
  LDA #&80:STA stm2+1:
  LDA #0:STA stm3+1:
  LDA #4:STA no                 \ draw 4 staves, store counter
.stm1 
  LDA #29:JSR oswrch:           \ Define graphics origin 
  LDA #0:JSR oswrch:JSR oswrch  \ 0, 0
  SEC     \set Carry
          \ Subtract memory from accumulator with carry A,C=A-M-(1-C) 
.stm2 
  LDA #0:SBC #&80:STA stm2+1    \ modified above
  PHP:JSR oswrch                \ graphics origin parameter
  PLP
.stm3 
  LDA #0:SBC #0:STA stm3+1
  JSR oswrch                    \ graphics origin parameter
  JSR stv                       \ Draw one stave, loop 4 times
  DEC no:BNE stm1               \ loop 4,3,2,1
  
  \ draw notes, play tune
.stm5 LDA fc:STA tm
  LDA #0:STA fc:
  LDA #&26:STA tm+4
  LDA #&88:STA tm+3
.stm6 
  CLC:
  LDA tm+3:STA not:
  LDA tm+4:ADC #&A:STA tm+4:
  STA not+1:
  JSR cht:
  STX nl:INC fc
.stm8 
  JSR nxno:BNE stm8:JSR cht:JSR tune
  LDA #60:JSR delay               \ delay for 60x20 = 1200ms
  LDA fc:CMP #4:BNE stm6:
  LDA tm:STA fc:
  LDA #26:JMP oswrch     \JMP to OSWRCH, so will RTS to calling code
.stm10      \static bytes 4+4+2+1 = 11 bytes
  EQUD &04FF0310:
  EQUD &000F020F:
  EQUW &18F0:
  EQUB 26
\\ End Draw Musical Staves, Notes, Play Tune


\\ Game End routine
\\ Display title screen in MODE 7, High Score etc
\\ Called from newgame
\\ uses strings dots_str, instructions_str defined in SS-01
.gend
{ 
  LDA #0:STA hs:                  \ set hs to 0
  LDA sc+2:CMP hs+2:BCC ge1       \ Compare High score MSB
  BNE ge0
  LDA sc+1:CMP hs+1:BCC ge1       \ Compare High score MSB
.ge0 
  LDA sc+1:STA hs+1:              \ Update High score with player score LSB, MSB
  LDA sc+2:STA hs+2:
  DEC hs                          \ Set hs to &FF
.ge1 
  LDA #22:JSR oswrch              \ OSWRCH Change to screen MODE 7 (Teletext)
  LDA #7: JSR oswrch
  LDX #(bsk AND255):LDY#(bsk DIV256):JSR wrs
  LDA #31:JSR oswrch:             \ move cursor to 5,11
  LDA #5:JSR oswrch:
  LDA #11:JSR oswrch
  LDA hs+2:JSR whs                \ write high score
  LDA hs+1:JSR whs
  LDA #48:JSR oswrch

  LDX #LO(dots_str): LDY#HI(dots_str):JSR wrs
  LDX #LO(instructions_str):LDY#HI(instructions_str):JSR wrs
  LDA #31:JSR oswrch              \ move cursor to 26, 11
  LDA #26:JSR oswrch
  LDA #11:JSR oswrch
  LDA hs:BEQ ge3                  \ if high score, then user may enter name
  LDA #21:LDX #0:JSR osbyte        \ OSBYTE 21 X=0 Keyboard buffer emptied \ flush
                                  \ User can enter high score name.
  TXA
  LDX#LO(nbk):LDY#HI(nbk):JSR osword:  \OSWORD - A=0 Read from keyboard to nbk
  JMP ge7

.ge3                        \ display existing high score name
  LDY #&FF
.ge6 
  INY:LDA nam,Y:JSR &FFE3   \ iterate through 32 chars in nam, OSASCI
  CMP #32:BPL ge6
  
.ge7 
  LDY #2:
.ge5 
  LDA m7,Y:JSR oswrch        \ iterate through 2 to 13 chars in m7, OSCASCI
  INY:CPY #13:BNE ge5
  LDA #100:JSR delay          \ delay for 100x20 = 2000ms

.*space                    
  LDA #26:JSR oswrch          \ OWSRCH, 26 restore default viewport?
  \LDX #(sps AND 255):LDY #(sps DIV 256):JSR wrs
  LDX #LO(sps):LDY #HI(sps):JSR wrs   \ write string
.ge4 
  LDX #&9D:JSR key          \ wait for space bar, loop
  BNE ge4
  RTS
}
\\ End of Game End routine


\\ Write High Score
\\ Called from Game End routine above
.whs
{
  PHA: LSRA:LSRA:LSRA:LSRA          \ Push A, multiply x 16
  CLC:ADC #&30:JSR &FFE3            \ add &30, call OSASCI, write line feed
  PLA: AND #&F:CLC:ADC #&30         \ Pull A, mask 4 high bits, add &30
  JMP &FFE3                         \ call OSASCI/OSWRCH and RTS to calling code
}
\\ End of Write High Score

\\ Write String to OSASCI, zero terminated string
\\ called with dts, ints, sps address
\\ input X=low byte, Y=high byte of dts address
.wrs
.write_string
{
  STX modify_string_addr+1            \ store parameter values direct, modifying code, SMC
  STY modify_string_addr+2
  LDY #&FF
.wr1
  INY 
.modify_string_addr            
  LDA dots_str,Y: JSR &FFE3         \ iterate through supplied table, calling OSASCI line feed
  CMP #0:BNE wr1                    \ terminates when A=0
  RTS
}
.end_SS_01
PRINT ".end_SS_01 = ", ~end_SS_01