
for(var i=0; i<4; i++)
{
    if spr_pipe_try_send(i)
    then return true;
}
return false;

