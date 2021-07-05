..\..\beebasm-1.09\beebasm -i build_birdstrike.asm -do BS_Clean.ssd -boot BIRDS 
..\..\beebasm-1.09\beebasm.exe  -vc -i build_birdstrike.asm -v > build_output.asm
..\..\beebasm-1.09\beebasm.exe  -vc -i build_birdstrike.asm -d >labels.txt
copy BS_Clean.ssd C:\workspace\BBC\jsbeeb\discs