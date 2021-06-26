\ GG.asm converted from parts of $.OLDSRCE BIRD DISK Side 1    
\ and missing source "G" obtained from dissassembly of G binary file.
\ (c) Andy Frigaard 1984 to May 2021
\ The GG files were written first (1982-3) baed on $.OLDSRCE and were a playable game with
\ many missing features.  The main loop was overwritten and only the subroutines used.
\ There are some later patches in the SS files.
\ This source file is edited down to contain only required elements
\ for a build using beebasm.
\ Contains 
\   Draw Musical Stave

\ I think &.OLDSOURCE is fairly definitive for &286E-&2D09 
\ (.mg to the start of the workspace / data areas at the top of the game).

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\ dissassembly from G binary
\\ new labels align to Iains 
\.drawStave
\     21EE   A0 00      LDY #&00

\\ Draw one Musical Stave
\\ Called from Draw Musical Staves, Notes, Play Tune
\\ Calls JSR oswrch, using PLOT commands
\\ Inputs: 
\\ Constants:
\stave_base_addr = &80..

.draw_stave
.stv                
{
    LDY #&00
.stave_loop1
    LDA sl,Y: JSR oswrch
    INY: CPY #&09
    bne stave_loop1
    LDX #&05
.stave_loop2           
    LDY #&09
.stave_loop3
    LDA sl,Y: JSR oswrch
    INY: CPY #&15
    BNE stave_loop3
    DEX
    BNE stave_loop2
    RTS
.stave_data
.sl 
    EQUB &12, &00, &04                  \ define graphics colour
    EQUB &19, &04, &00, &01, &EC, &03   \ PLOT K, X, Y
    EQUB &19, &01, &00, &03, &00, &00   \ PLOT K, X, Y
    EQUB &19, &00, &00, &fd, &f0, &ff   \ PLOT K, X, Y
}