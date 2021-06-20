# BS2021
Bird Strike is a video game for the BBC Micro written by Andy Frigaard and published in 1984 in the UK by [FireBird](https://en.wikipedia.org/wiki/Telecomsoft#Firebird) software.   This is a release in 2021 of the original source code.


It can be played online in the JSBeeb emulator here [ http://www.bbcmicro.co.uk](http://www.bbcmicro.co.uk/index.php?rt_R=&rt_B=&rt_M=&rt_P=&rt_U=&rt_W=&rt_L=&search=bird+Strike&on_T=on&on_Y=on&on_P=on&on_A=on&on_G=on&on_S=on&on_Z=on&on_C=on&sort=b)


## Original source folder
Contains the files in the BBC file format recovered from a 5.25" disk backup from 1984.

These are a mix of BBC BASIC Assembler source code and some binary files containing graphics, sprites and data tables.  The three BASIC files are also copied and renamed as `.bas` in a text file format.  The original files are in the BBC BASIC format with tokenised line numbers.

Small sections of source code were only present in binary format and may later be recovered from the original tapes.  These have been reconstructed from disassembly.

The source is hard to read in the original BASIC/Assembler files. 
There are minimal comments and typically 2 or 3 character labels.  Working memory was very limited and the shortest possible files allowed for source and assembled code to both be held in RAM.  The game development started using the cassette tape file system and only the later files were developed on disk. 


## Buildable source 
The Build folder has a current (2021) version of the source files that can be built using Beebasm to produce a bootable disk image for use on the Beebem emulator or real BBC Micro.

There are minor differences to the original source, mostly explained.  There are extensive explanations, comments, labels, & named constants, but no fixes or changes to the code.  It will build a byte-for-byte binary that is the same as the published tape version without the copy protection and tape file loader (which had music & instructions).

Multiple asm files are used, each built at a specific address.  This is because the original game has areas of binary data (graphics, sprites, data tables) interspersed with the code.

There are a large number of self-modifying code routines and patches applied to earlier code that make direct reference to specific memory locations.  For this reason the files need to be built and run at those memory locations.

### How to build
All the required files are in the Build folder only.   

The main build file is `build_birdstrike.asm` that links all the source and binary files.  This declares all the constants, variables and determines the locations at which each component is assembled or loaded.  It does contain some build instructions, for example, for a basic assembly :  `beebasm -i build_birdstrike.asm `


## Credits
Huge thanks to Iain McLaren whose work to disassemble and debug the original game inspired me to start this work.  His assistance and encouragement to recover the source from my old disks motivated me to spend time rediscovering, commenting and publishing the code after a 37 year gap!

Also to the Stardot community https://stardot.org.uk/forums/index.php, who are friendly, helpful and extemely knowledgeable!

## List of files
### Original

### Build




