/*
Turns on/off the naggle (TCP_NODELAY) algorithm.
argument0 = socket id to affect
argument1 = true/false (true means NODELAY, false means DELAY)
*/
return dll39_set_nagle(argument0, argument1);
