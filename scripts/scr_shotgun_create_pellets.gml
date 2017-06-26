var bp_left_angle, bp_right_angle;
var pellet_angle;

switch(gun_orientation)
{
    case SGOO.Top:
        bp_left_angle = 225;
        bp_right_angle = 315;        
        //pellet_angle = 20;        120
        pellet_angle = 45;
        break;
    case SGOO.Right:
        bp_left_angle = 135;
        bp_right_angle = 225;
        //pellet_angle = -70;
        pellet_angle = -45;
        break;
    case SGOO.Bottom:
        bp_left_angle = 45;
        bp_right_angle = 135;
        //pellet_angle = 200;
        pellet_angle = 225;
        break;        
    case SGOO.Left:
        bp_left_angle = -45;
        bp_right_angle = 45;
        //pellet_angle = 110;
        pellet_angle = 135;
        break;
}

var cx = x + shotgun_atom.atom_w_half;
var cy = y + shotgun_atom.atom_h_half;
bp_left = instance_create(cx, cy, obj_shotgun_broken_atom);
bp_right = instance_create(cx, cy, obj_shotgun_broken_atom);

bp_left.is_left = true;
bp_right.is_left = false;
bp_left.direction = bp_left_angle;
bp_right.direction = bp_right_angle;
//Note the alarm for these are objects is started in the event STEP

//create pellets 
//2 - yellow
//6 - Red
//12 - Blue
//total - 20

var angle_delta = 4.5; //90/20  //7; //140 / 20
for(var i=0; i<20; i++)
{
    var p = instance_create(cx, cy, obj_shotgun_pellet);
    p.direction = pellet_angle;
    p.gun_orientation  = gun_orientation;
    p.shotgun_operand = inital_atom;
    pellet_angle += angle_delta;
    
    if i == 9 or i == 10
    {
        p.sprite_index = spr_e4y;
    } 
    else if i == 1
         or i == 3
         or i == 5
         or i == 15
         or i == 17
         or i == 19
    {
         p.sprite_index = spr_e_red;
    }        
    pellets[i] = p;
}
