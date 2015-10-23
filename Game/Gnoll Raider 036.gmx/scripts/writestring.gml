/*
Write a null terminated string to the buffer
Warning: DO NOT set argument1 to true like you would in the old method. Doing this
will make it try and write to a buffer with the ID of 1 (1 = true)

Argument0 = String to write.
[Argument1]: The buffer id to write too. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0, arg1;
arg0 = argument0;
arg1 = 0;
if (argument_count > 1) {
  arg1 = argument[1];
}
return dll39_write_string(arg0, arg1);
