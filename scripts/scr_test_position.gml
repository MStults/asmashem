//Tests if atom is in position and if so stops it

var dist =  point_distance(x, y, pos_x, pos_y);
var stopped = dist <= 4;
var moving_away = dist > last_dist && last_dist > 0;
var here = stopped || moving_away;
last_dist = dist;

if moving_away
{
    //x = pos_x;
    //y = pos_y;
    gravity = 0;
    //speed = 0;
    move_towards_point(pos_x, pos_y, mov_speed_slow);
}

//slow if close
//if dist < mov_speed && dist >= mov_speed / 2
if dist < mov_speed 
{
    gravity = 0;
    speed -= 2;
    if speed < 1 then speed = 1;
    //speed = mov_speed_slow;    
}

return stopped;     
