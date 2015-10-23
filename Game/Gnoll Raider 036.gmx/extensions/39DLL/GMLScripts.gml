#define readbit
/*
  Reads the bit at a certain position in a number
  argument0 = number
  argument1 = bit position (0-7)
  returns the bit value (true/false)
*/

//Error checking
if (!is_real(argument0) || !is_real(argument1))
  return 0;
  
return (argument0 & power(2, argument1))>0;
#define buildbyte
/*
  returns a byte based on true/false arguments
  argument0-argument7 = bit values
*/

//Error checking
for (i = 0; i < 8; i += 1)
    if (!is_real(argument[i]))
        return 0;
 
return argument0*128 + argument1*64 + argument2*32 + argument3*16 + argument4*8 + argument5*4 + argument6*2 + argument7*1; 
