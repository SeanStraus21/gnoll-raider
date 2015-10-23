/*
Writes a 2 byte integer to the buffer. the value can be between
-32768 and +32767
Argument0 : value
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0,arg1;
arg0 = argument0;
arg1 = 0;

if (argument_count > 1){
  arg1 = argument[1];
}
return dll39_write_short(arg0, arg1);
