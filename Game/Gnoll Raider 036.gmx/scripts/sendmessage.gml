/*
  Sends the data in a buffer through the selected tcp or udp socket.
  Argument0 = Socket to send to.
  [Argument1] = Ip to send to (for udp sockets)
  [Argument2] = Port to send to (for udp socket)
  [Argument3]: The buffer id to send. Leave out this argument or set
it to 0 to use the default buffer.
  
  Returns the amount of bytes sent + the bytes used to format the message
  NOTE:
  If you're sending over a tcp socket and dont want to use the default buffer
  than send a message like this:
  sendmessage(sockid, "", 0, bufferid);
*/
var arg0,arg1,arg2,arg3 = 0;
arg0 = argument[0];
if(argument_count > 1){
  arg1 = argument[1];
}
if(argument_count > 2){
  arg2 = argument[2];
}
if(argument_count > 3){
  arg3 = argument[3];
}
return dll39_message_send(arg0, arg1, arg2, arg3);
