var xx = argument0
, yy  = argument1;

with(obj_atom)
{
    if(id != other.id && x == other.x)
    {
         if(collision_point(xx, yy, id, false, false))
         {
            if not scr_can_float_past(id) then return false;
         }
    }
}

return true;
