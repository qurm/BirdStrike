\ This is the master file used to build from source BIRD DISK Side 1
\ Andy Frigaard May 2021
\ Other files are largely in the same format as original
\ with same structure, more labels, more comments.
\
\ S source file contains
    \ main game loop, and functions for
    \ drawing & playing tunes
    \ game over, high score entry etc
\ See PIG (PIGSRCE)
\ See GG (OLDSRCE) for the core game, moving sprites, etc.
\
\ INCLUDE "filename"
\ Includes the specified source file in the code at this point.
\ INCBIN "filename"
\ Includes the specified binary file in the object code at this point.

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\ Build instructions, assume that Beebasm is in the folder specified.
\ Each option produces output as per the Beebasm options. 
\ beebasm -i build_birdstrike.asm
\ ..\beebasm-1.09\beebasm -i build_birdstrike.asm 
\ ..\beebasm-1.09\beebasm.exe  -vc -i build_birdstrike.asm -v > build_output.asm
\ ..\beebasm-1.09\beebasm.exe  -vc -i build_birdstrike.asm -d >labels.txt
\ ..\beebasm-1.09\beebasm -i build_birdstrike.asm -do BS1v1.ssd -boot BIRDS 
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


WORDvA  = $020C        \ WRCH vector A
WORDvB  = $020D        \ WRCH vector B

WRCHvA  = $020E        \ WRCH vector A
WRCHvB  = $020F        \ WRCH vector B

EVNTvA  = $0220        \ EVNT vector A
EVNTvB  = $0221        \ EVNT vector B

LFE4D   = $FE4D        \ Interrupt Flag Register
LFE4E   = $FE4E        \ Interrupt Enable Register
SysViaRegB = &FE40
SysViaDDRA = &FE43
SysViaIFR  = &FE4D
SysViaIER  = &FE4E
SysViaRegA = &FE4F

vector_table_low_byte    = $FFB7    \ Vector table address low byte
vector_table_high_byte   = $FFB8    \ Vector table address high byte

osasci  = $FFE3        \ OSASCI
oswrch  = $FFEE        \ OSWRCH
osword  = $FFF1        \ OSWORD
osbyte  = $FFF4        \ OSBYTE

\ Zero Page locations
no=&70:       \ number used in bombs too - generic counter
\ Flags are used bit-wise
bfg = &71     \ bird flag , set to 2 intially
pfg = &72     \ plane flag ?
pflg=&72       \ used in OLDSRCE
bofg = &73    \ bomb flag  (from OLDSRCE)
mod=&74:
pls=&75         \ plane pointer to plane_list, screen address
                \ OLDSRCE uses: !pls=&2D13:?&2D13=25
exp=&77:        \ plane list 1st element
pos=&78:        \ temp position, used in .mg (move gun), pp plot plane address 
psta=&7A:       \ plane list 4th element
yo=&7B          \ plane list 5th element
py=&7C
ra1=&7D         \ random IFM - fix pigeon height bug \ different in OLDSRCE ra1=&7C  TODO ONLY used in few places 

sd=&80          \ used for sprite indirect address, bomb, bullet
sf=&82          \ sprite "from" address
st=&84          \ sprite "to" address
gunp=&86        \ gun position
plf=&88         \ plane sprite "from" address
bulst=&8A       \ bullet start/list as are multiple  &2d0A in GG-02
                \ ?bfg=2:!bulst=&2D472D0A:?&2D0A=8:?&2D47=20
bost=&8C        \ bomb start/list as are multiple
cnt=&8E         \ counter for?

\ Sprites memory locations - now defined in constants in source
\ $.X is loaded at &1900 (scenery sprites etc - not clouds/enemies)
\ $.X       001900 001900 000500         &1900 + &0500 = &1E00

tm=&1A08      \ tm+1 used for number of active 'bomb slots'
              \ memory overwrites begin at ?(tm+1)>19 (ish).
              \ tm+2 used for vsync timing counter
\ gunf=&2F00          \ used in .gun, value is modified by .sgun
gunf=&1A60

gex=&1D55           \ gun explosion timer, used in gun_hit_display to show correct sprite
                    \ gex+1 is current no of lives
                    \ gex +2,3  is LO,HI screen address for mini gun indicator
player_live_init = 3
\ TODO picn different in PIG and SS, using SS as more recent
picn=&1D54:   \ different value in PIGSRCE !!
not=&1D59:    \ note sprite origin ?
fc=&1D5C

\ $.G is loaded at &21EE (Stave-drawing onwards) (built with PIGSRCE?) 
\ $.G       0021EE 0021EE 000E12
\ &21EE + &0E12 = $3000   (start of MODE 2 screen video RAM)

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\nl=&2382    \ Note list &30 bytes, zero-terminated lists, 13,14,11,8
\tl=&23B2    \ Tune List  pairs zero-terminated lists, pitch, duration, 16, 16, 16, 12, 8, 16, 1
\B%=&240E:  \   code, same as pg in GG.asm
\pb=&2581:
\X%=&258D:
\R%=&25B8:
\V%=&25C9
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

\ Program locations
\ mostly in the G, PIGSRCE memory space, now defined in GG-02 source
\bis=&2D68
\Xg=&2D70
\inb=&2D71
\buf=&2D72
\bof=&2D74
\sc=&2D76            \ used by .mg, move gun
\de=&2D79            \ initialised with !de=&400314 (3 bytes, ti=&40)
\ti=&2D7A
\ba=&2D7C

\ TODO gex different in PIG and SS, using SS as more recent
\ gex=&2F28

\ direct setting of RAM - not in beebasm
\ !gunp=&7E90:!Xg=&2F30C720:!plf=&2F40:!bof=&2F38:!de=&400314
\ ?bfg=2:!bulst=&2D472D0A:?&2D0A=8:?&2D47=20
\ !pls=&2D13:?&2D13=25


ORG &1400
\ 1400 to 15BE
INCLUDE "SS-01.asm"
\ with HSTRS data to &1776 

\ ORG &15C0
\ INCBIN "HSTRS.bin"        \ MODE 7 High score and Keys, Space to start.
                            \ derived from $.HSTRS source binary
\ now included in SS-01

ORG &1778
\ 1778 to 18FE
INCLUDE "SS-02.asm"
\ to combine with SS-01

ORG &1900
INCBIN "X.bin"          \ sprite, data, variables file &1900 to &1E00, &500 bytes
                        \ pigeon/score font/scenery/player sprites
                        \ derived from $.X source binary

ORG &1E00
\ 1E00 to 21DD - some space above
INCLUDE "SS-03.asm"
\ when combined with below files goes to 22EF


\ORG &27F5       \ P%=&27F5
ORG &21EE       \ align to released source
INCLUDE "GG-01.asm"             \ derived from $.G source binary
\ 21EE to 2222
\ draw_stave only, very short


ORG &2223
INCLUDE "PIG-01.asm"
\ 2223 to 22FF very short
\ starts at .mini
\ and has gun_hit_display

\no space here - assembles up to 22FF

ORG &2300
note_sprite_addr=&2300
bomb_sprite_addr=&2350
gun_sprite_addr=&2358       \ (normal) gunf=&1A60 (explosion)
INCBIN "G-Note.bin"         \ sprite and data file &2300 to &2380, &80 bytes
                            \ Notes, bomb, gun sprites
                            \ derived from $.G source binary
\unused 2380  from 2382 is note list, .nl
\TODO this is very small, can relocate

\ ORG &240E 
ORG &2382
INCLUDE "PIG-02.asm"
\ starts with .nl, .tl at 2382
\ starts at .pg to .b8 +
\ 240E to 258C
\ new code to 26AE 
\ Background scenery, graphics, lines, tables to 281C

ORG &281D
INCLUDE "GG-02.asm"
\ starts at .def_log_colour
\ 281D to 2D09
\ data, lists, sound tables 2D09 to 2E00 


ORG &2E00
INCBIN "G-Plane.bin"        \ sprite and data file &2E00 to &3000, &200 bytes
                            \ cloud, plane sprites
                            \ derived from $.G source binary

\ SAVE "filename", start, end [, exec [, reload] ]
SAVE "BIRDS", &1400, &3000, &1E00
