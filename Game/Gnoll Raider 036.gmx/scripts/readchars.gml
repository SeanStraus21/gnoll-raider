/*
Reads a sequence of characters from the buffer.
Argument0: number of charactered to read
[Argument0]: The buffer id to read from. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0,arg1;
arg0 = 0;
arg1 = 0;
if (argument_count > 0){
  arg0 = argument[0];
}
if (argument_count > 1){
  arg0 = argument[1];
}
return dll39_read_chars(arg0, arg1);
