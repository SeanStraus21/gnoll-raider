/*
Creates a udp socket.
Argument0 = Port to use.
Argument1 = Blocking/non-blocking mode.

HOW TO SEND MESSAGES:
sendmessage(sockid, "ip.to.send.to", portosendto, [bufferid]);
*/
return dll39_udp_connect(argument0, argument1);
