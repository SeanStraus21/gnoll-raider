/*
Same as writefloat but the number can be much larger. It can write any number GM supports.
Warning: It uses 8 bytes!!
Argument0: value.
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0, arg1;
arg0 = argument0;
arg1 = 0;
if (argument_count > 1) {
  arg1 = argument[1];
}
return dll39_write_double(arg0, arg1);
