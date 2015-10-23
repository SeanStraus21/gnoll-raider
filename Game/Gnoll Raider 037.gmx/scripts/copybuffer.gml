/*
appends one buffers data to the end of another
Argument0 = destination buffer;
Argument1 = Source buffer
note: 0 is default buffer
*/
var arg0, arg1;
arg0 = argument0;
arg1 = 0;
if (argument_count > 0) {
  arg0 = argument[0];
}
if (argument_count > 1) {
  arg1 = argument[1];
}
return external_call(global._BufAC, arg0, arg1);
