///argument0 => badge enumeration

var badge = argument0;

var len = array_length_1d(global.badges_earned);
for(var i=0; i<len; i++)
{
    if(global.badges_earned[i] == badge)
    {
        return 0;
    }    
}

global.badges_earned[len] = badge;


