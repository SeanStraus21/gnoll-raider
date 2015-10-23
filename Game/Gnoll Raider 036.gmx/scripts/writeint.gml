/*
Writes a 4 byte integer to the internal buffer. The value can be between
-2147483648 and +2147483647
Argument0: value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0, arg1;
arg0 = argument0;
arg1 = 0;
if (argument_count > 1) {
  arg1 = argument[1];
}
return dll39_write_int(arg0, arg1);
