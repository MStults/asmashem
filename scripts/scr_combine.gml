//scr_msg(25, y - atom_h,  "Joe need a COMBINING SOUND");
global.combining_cnt++;
kids = argument0;
combine_horizontal =  argument1;
kids_combined = 0;
kids_cnt = array_length_1d(kids);
state = AtomState.CombiningAxis;
var xx = pos_x, yy = pos_y;
for(var i=0; i< kids_cnt; i+=1)
with(kids[i])
{
    state = AtomState.CombiningKid;    
    pos_x = xx;
    pos_y = yy;
    if combine_horizontal && x > other.x gravity_direction = 180;
    else if combine_horizontal gravity_direction = 0;
    else if y > other.y gravity_direction = 90;
    else gravity_direction = 270;
    gravity = 1;
    scr_play_snd(Sound.AtomMerge); 
    //move_towards_point(pos_x, pos_y, 1);
}


