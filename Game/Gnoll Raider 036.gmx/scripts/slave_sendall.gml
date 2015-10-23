// Sends the message buffer to all the clients except for
// the client specified my argument0
var arg0 = 0;
if (argument_count > 0) {
  arg0 = argument[0];
}
var block;
block = arg0;


// Send the buffer
if cjp > 1
{
    for(i = 1; i < cjp; i += 1)
        {
        if pnum[i] != block
            {
            sendmessage(socket[i]);
            }
        }
    }

