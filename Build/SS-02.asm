\ converted from $.S BIRD DISK Side 1
\ (c) Andy Frigaard 1984 to May 2021
\ The SS files were written last and refer to earlier subroutines in PIG, GG files
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains 
\   Musical stave display
\   Game end, check high score 
\   Display of logo, high score in MODE 7
\ source from 1778 to 18FE   

\ ORG $1778          \ "P%" as per the original source

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
  LDA #&26:STA tm+4:
  LDA #&88:STA tm+3
.stm6 
  CLC:
  LDA tm+3:STA not:
  LDA tm+4:ADC #&A:STA tm+4:
  STA not+1:
  JSR cht:
  STX nl:INC fc
.stm8 JSR nxno:BNE stm8:JSR cht:JSR tune
  LDA #60:JSR delay               \ delay for 60x20 = 1200ms
  LDA fc:CMP #4:BNE stm6:
  LDA tm:STA fc:
  LDA #26:JMP oswrch     \JMP to OSWRCH, so will RTS to calling code
.stm10      \static bytes 4+4+2+1 = 11 bytes
  EQUD &04FF0310:EQUD &000F020F:EQUW &18F0:EQUB 26
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
  
  \LDX #(dts AND 255): LDY#(dts DIV 256):JSR wrs
  \LDX #(ints AND 255):LDY#(ints DIV 256):JSR wrs
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
  \todo published source has more code here..  patch by FB?
  \ IFM - This seems to be a (final) attempt to trip up a would-be
  \ pirate! ?&5D is set to 1 by the second Firebird loading/decryption
  \ routine just before it launches the game at &1E00.
  \ If ?&5D<>1 before this (eg if you've loaded the game by other
  \ means), the code enters an infinite loop at &1907
  \
  \ Note: The disc version that has been in circulation for many years
  \ achieves this by copying 160 bytes of data from &1200 to page zero
  \ via a routine at &1300. This routine also restores a couple of
  \ vectors (WRCH and EVNT) used by the FB game-loading music. In the
  \ original these are restored by the decryption routine.
  \
\18fe:                     pha
\18ff:                     lda $5d
\1901:                     cmp #$01
\1903:                     bne L1907
\1905:                     pla
\1906:                     rts
\1907: L1907               jmp L1907
