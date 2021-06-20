
## Style Guide

Assembler comments and layout to conform to beebasm standards

Comments start with backslash '\\'

 Subroutine header 
```
\\ plot_clouds draws clouds 
\\ Clouds are made up of 3 sections, upper, mid, lower.
\\ Inputs: (set above)
\\ sf = sprite from address
\\ sd = sprite destination address
\\ Constants:
cloud_mid_dest_addr = &4400
cloud_sprite_addr= &2EE0                  \ cloud sprite is &2E00 + 256
cloud_lower_dest_addr = &4900             \ source address in screen memory
```

### Constants, Labels

Defined addresses or constants, where destination cannot be a label.
```
gun_sprite_addr= &1910
...
LDA #LO(gun_sprite_addr):STA sf
```  

Labels within function/subroutine, local loop destinations are in left column.  Code is indented:

```
.function_action_attribute

   \ Initialise Flying Right  R=>F
.pig_init_right

...

.mirror_loop_1     
   LDY #&00
.mirror_loop_2 
   LDX #&07

```
use additional .modify_  labels where code is modified
```asm
.modify_lower_dest_addr
   LDA cloud_lower_dest_addr,Y         \ self modifying SMC 
   ...
   INC modify_lower_dest_addr+2 
```

Use local label for short internal branch,
indent skipped lines.  Local scope is defined by `{... }`.
```
{   
   BMI skip3 
      INC modify_lower_dest_addr+2     \ &2670
.skip3
}
```