var t = instance_find(obj_tut1_dialog, 0);
with(t)
{
    with(kid_left)
    {
        x = xstart;
       path_start(path_web_tut1_kid_left, 6, path_action_stop, 0); 
    } 
    
    with(kid_right)
    {
        x = xstart;
        path_start(path_web_tut1_kid_right, 6, path_action_stop, 0); 
    } 
 
    alarm[1] = 20;
    state = WEB_TUT1.POINTER_FADE_OUT;
}
scr_play_snd(Sound.AtomMerge); 
