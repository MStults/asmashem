if argument0 
{
    if type == AtomType.Lightning 
    then scr_play_snd(Sound.Spark0);
    else if type == AtomType.Iron 
    then  scr_play_snd(Sound.Clank);
    else scr_play_snd(Sound.AtomPop);
}

if fps >= room_speed 
{
    var cx = x + atom_w_half, cy = atom_h_half + y;        
    part_particles_create_colour(global.p_system_back, cx, cy, global.p_poof,p_color, 5); 
    scr_play_snd(Sound.Move);
}
