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

.start_GG_01
PRINT ".start_GG_01 = ", ~start_GG_01

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


\\ Notes, bomb, gun sprites
\\ derived from $.G source binary
\\note_sprite_addr=&2000
\\bomb_sprite_addr=&2050
\\gun_sprite_addr=&2058       \ (normal) gunf=&1A60 (explosion)

\ align to page
\\ equivalent of INCBIN "G-Note.bin"         \ sprite and data file originally at &2300 to &2380, &80 bytes
\ORG &2000
ALIGN &100

.note_sprite_addr
EQUB &00,&00,&00,&00,&00,&14,&3C,&3C,&38,&38,&38,&38,&38,&38,&38,&20
EQUB &00,&00,&00,&00,&00,&14,&38,&3C,&38,&38,&38,&38,&38,&38,&38,&00
EQUB &00,&00,&00,&00,&00,&14,&38,&3C,&00,&00,&00,&00,&00,&38,&38,&20
EQUB &00,&00,&00,&00,&00,&38,&38,&30,&00,&00,&00,&00,&00,&00,&00,&00
EQUB &00,&00,&00,&00,&00,&3C,&3C,&10,&00,&00,&00,&00,&00,&38,&38,&30
.bomb_sprite_addr
EQUB &01,&04,&04,&01,&01,&01,&00,&00
.gun_sprite_addr
EQUB &00,&04,&04,&04,&2C,&04,&04,&04
EQUB &00,&00,&00,&14,&3C,&14,&14,&00,&28,&28,&28,&3D,&3E,&3E,&3C,&28
EQUB &00,&04,&04,&04,&2C,&04,&04,&04,&00,&00,&00,&00,&28,&00,&00,&00

.end_GG_01
PRINT ".end_GG-01 = ", ~end_GG_01