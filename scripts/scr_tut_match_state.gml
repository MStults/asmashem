//argument0 => end state 

var lookat_temp = noone;
if adjacent_index >= 0 then lookat_temp = adjacent[adjacent_index];
if not instance_exists(lookat_temp) lookat_temp = noone;

if chosen != active[T1A.CHOSEN]
or state == ControllerState.MoveEnd  
and lookat_temp != active[T1A.LOOKAT]
{
    if(state == ControllerState.MoveEnd) 
    {
        if(tut_play_snd)scr_play_snd(Sound.Clank);
        tut_play_snd = false;
    }
    scr_tut_set_chosen();
} else {
    tut_play_snd = true;
    if (state == ControllerState.MoveEnd)
    {
        //TURN OFF TUT UI
        event_user(15);
        tut_state = argument0;
    }
}      

if adjacent_index >= 0 and adjacent[adjacent_index] != active[T1A.LOOKAT]
then obj_arrow.arrow_image_index = 3;
