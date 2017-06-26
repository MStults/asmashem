can_see = false;
if(DISPLAY_TYPE_CHANGE_CNT) next_cnt++;

if not instance_exists(obj_remnant) or global.tutorial
{
    if ds_queue_size(global.special_atom_queue) > 0
    then next_atom_type = ds_queue_dequeue(global.special_atom_queue);
    else next_atom_type = scr_get_next_normal_atom_type(); 
}
else 
{
    next_atom_type = scr_get_next_normal_atom_type();
}

atom_index = 0;
switch(next_atom_type)
{
    case AtomType.One:
        atom_index = spr_atom_1_0;
        break;
    case AtomType.Two:
        atom_index = spr_atom_2_0;
        break;
    case AtomType.Three:
        atom_index = spr_atom_3_0;
        break;
    case AtomType.Four:
        atom_index = spr_atom_4_0;
        break;
    case AtomType.Five:
        atom_index = spr_atom_5_0;
        break;       
    case AtomType.Six:
        atom_index = spr_atom_6_0;
        break;   
    case AtomType.Lightning:
        atom_index = spr_atom_lightning;
        break;
    case AtomType.Dop:
        atom_index = spr_atom_dop_0;
        break;
    case AtomType.Laser:
        atom_index = spr_atom_laser_0;
        break;
    case AtomType.Shotgun:
        atom_index = spr_atom_shotgun_0;
        break;
    case AtomType.Missile:
        atom_index = spr_atom_missile_0;
        break;
    case AtomType.Anti:
        atom_index = spr_atom_anti_0;
        break;
    case AtomType.Iron:       
        atom_index = spr_atom_iron;
        break;
    case AtomType.Mine:       
        atom_index = spr_atom_mine_0;
        break;
}

alarm[0] = room_speed;
