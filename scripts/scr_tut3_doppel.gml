var xx = argument0;
var yy = argument1;

with(instance_create(x,y, obj_dop_particle))
{
    x1 = xx;
    y1 = yy;
    doppeling_time += room_speed / 2;
    doppel_type = AtomType.Five;
    alarm[0] = 15;
    depth = other.depth - 1;
}
