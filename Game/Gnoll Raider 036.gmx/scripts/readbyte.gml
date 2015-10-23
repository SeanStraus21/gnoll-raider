/*
Returns a byte from the buffer.
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0 = 0;
if (argument_count > 0){
  arg0 = argument[0];
}
return dll39_read_byte(arg0);
