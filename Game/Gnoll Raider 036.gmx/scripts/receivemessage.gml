/*
Receives data from the selected tcp or udp socket and copies to the 
internal buffer.
Argument0 = Socket to recieve from.
[Argument1] = Amount of bytes to receive. Optional. Overrides the format
mode if used.
[Argument2]: The buffer id to receive to. Leave out this argument or set
it to 0 to use the default buffer.

returns the amount of bytes recieved
NOTE:
If you dont want to save the data to the defualt buffer, than do it like this:
receivemessage(sockid, 0, bufferid);
*/
var arg0,arg1,arg2 = 0;
arg0 = argument[0];
if(argument_count > 1){
  arg1 = argument[1];
}
if(argument_count > 2){
  arg3 = argument[2];
}
return dll39_message_receive(arg0,arg1,arg2);
