/*
[Argument0]: The buffer id to use. Leave out this argument or set
it to 0 to use the default buffer.
*/
var arg0 = 0;
if (argument_count > 0){
  arg0 = argument[0];
}
return external_call(global._BufM, arg0);
