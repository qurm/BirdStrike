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
\ ..\..\beebasm-1.09\beebasm -i build_birdstrike.asm 
\ ..\..\beebasm-1.09\beebasm.exe  -vc -i build_birdstrike.asm -v > build_output.asm
\ ..\..\beebasm-1.09\beebasm.exe  -vc -i build_birdstrike.asm -d >labels.txt
\ ..\..\beebasm-1.09\beebasm -i build_birdstrike.asm -do BS_Clean.ssd -boot BIRDS 
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
bfg = &71     \ bullet flag , set to 2 intially
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

bomb_count=&50   \AF 3/7/2021     current no of bomb, 0 is none, up to max bomb_list[0]
bomb_max_count=&51   \AF 3/7/2021    \list
\bomb_addr=&51   \AF 3/7/2021    \list
b_addr=&52   \AF 3/7/2021    \list
b_lower_addr=&62   \AF 3/7/2021
\ Sprites memory locations - now defined in constants in source
\ $.X is loaded at &1900 (scenery sprites etc - not clouds/enemies)
\ $.X       001900 001900 000500         &1900 + &0500 = &1E00
X_base_addr = &2100 
PRINT "X_base_addr = ", ~X_base_addr

explosion_sprite_addr  = X_base_addr + &040          \ base for 3 animated sprites &30 long
mini_gun_sprite_addr= X_base_addr + &010               \ temp player gun sprite &1928 or &1910

bullet_sprite_addr  = X_base_addr + &100             \bullet simple sprite
other_sprite_addr  = X_base_addr + &110             \todo this is gun?
pigl_sprite_addr = X_base_addr + &100            \ Bird Sprites, Flying Left?  L=>R, on single page 
pigr_sprite_addr = X_base_addr + &200    \ &1B00 \ Bird Sprites, Flying Right?  R=>L, on single page

tm=X_base_addr + &108     \ tm used in stmv as temp store of fc 
                \ tm+1 used for number of active 'bomb slots'
              \ memory overwrites begin at ?(tm+1)>19 (ish).
              \ tm+2 used for vsync timing counter
\ gunf=&2F00          \ used in .gun, value is modified by .sgun
gunf=X_base_addr + &160

score_sprite_base= X_base_addr + &300
plane_table = X_base_addr + &440      \ in X.bin file

picn=X_base_addr + &454        \ different value in PIGSRCE !!
gex=X_base_addr + &455           \ gun explosion timer, used in gun_hit_display to show correct sprite
                        \ gex+1 is current no of lives
                        \ gex +2,3  is LO,HI screen address for mini gun indicator
player_live_init = 3

not = X_base_addr + &459    \ note sprite origin , not+1
plane_kill_count = X_base_addr + &45B
fc = X_base_addr + &45C
PRINT ".picn = ", ~picn


ORG &1100
.start_SS_01
\ 1400 to 15BE
INCLUDE "SS-01.asm"
\ with HSTRS data to &1776 
\ MODE 7 High score and Keys, Space to start.
\ derived from $.HSTRS source binary

\ ORG &1E00
\ &15FD to &19DD 
INCLUDE "SS-03.asm"
\ has entry point .game

\ ORG &2223
INCLUDE "PIG-01.asm"
\ was 2223 to 22FF very short
\ new &19DD to &1ABA
\ starts at .mini
\ and has gun_hit_display

\ ORG &2382
INCLUDE "PIG-02.asm"
\ starts with .nl, .tl at 2382
\ starts at .pg to .b8 +
\ 240E to 258C
\ new code to 26AE 
\ Background scenery, graphics, lines, tables to 281C

\ORG &21EE       \ align to released source
INCLUDE "GG-01.asm"             \ derived from $.G source binary
\ was 21EE to 2222
\ new to &1AEF
\ draw_stave only, very short

\ ORG &2300
ORG &2000
\ align to page
\\note_sprite_addr=&2300
\bomb_sprite_addr=&2350
\gun_sprite_addr=&2358       \ (normal) gunf=&1A60 (explosion)
note_sprite_addr=&2000
bomb_sprite_addr=&2050
gun_sprite_addr=&2058       \ (normal) gunf=&1A60 (explosion)
INCBIN "G-Note.bin"         \ sprite and data file &2300 to &2380, &80 bytes
                            \ Notes, bomb, gun sprites
                            \ derived from $.G source binary
\unused 2380  from 2382 is note list, .nl
\TODO this is very small, can relocate
.end_G_Note
PRINT ".end_G_Note = ", ~end_G_Note


\ORG &1900
ORG X_base_addr
INCBIN "X.bin"          \ sprite, data, variables file &1900 to &1E00, &500 bytes
                        \ pigeon/score font/scenery/player sprites
                        \ derived from $.X source binary
.end_X
PRINT ".end_X = ", ~end_X


\ ORG &281D
ORG &2600
INCLUDE "GG-02.asm"
\ starts at .def_log_colour
\ 281D to 2D09
\ data, lists, sound tables 2D09 to 2E00 


ORG &2E00
plane_sprite_addr  = &2F00              \ base for 4 levels of plane
INCBIN "G-Plane.bin"        \ sprite and data file &2E00 to &3000, &200 bytes
                            \ cloud, plane sprites
                            \ derived from $.G source binary

\ SAVE "filename", start, end [, exec [, reload] ]
\ SAVE "BIRDS", start_SS_01, &3000, &1E00
SAVE "BIRDS", start_SS_01, &3000, game
