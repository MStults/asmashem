var lookat = adjacent[adjacent_index];
var prev_total_valid_moves = global.total_valid_moves

if lookat.type == AtomType.Anti
{    
    scr_start_anti(lookat, chosen);
    obj_arrow.visible = false;    
    state = ControllerState.AnitAnnihilation;    
    global.total_valid_moves++;    
    global.anti_triggers++;
    global.anti_cc = 0;
    global.anti_vc = 0;
}
else if lookat.type == AtomType.Missile
{
    scr_start_missile(lookat, chosen);
    obj_arrow.visible = false;    
    state = ControllerState.Missiling;
    global.total_valid_moves++;
    global.missile_triggers++;
    global.missile_cc = 0;
    global.missile_vc = 0;    
}
else if lookat.type == AtomType.Shotgun
{
    scr_start_shotgun(lookat, chosen);
    obj_arrow.visible = false;    
    state = ControllerState.Shotgunning;
    global.total_valid_moves++; 
    global.shotgun_triggers++;   
    global.shotgun_cc = 0;
    global.shotgun_vc = 0;
}
else if lookat.type == AtomType.Mine
{
    scr_start_mine_explosion(lookat, chosen);
    obj_arrow.visible = false;    
    state = ControllerState.MineExploding;
    global.total_valid_moves++; 
    global.mine_triggers++;   
    global.mine_cc = 0;
    global.mine_vc = 0;
}
else if lookat.type == AtomType.Laser
{
    scr_start_laser(lookat, chosen);
    obj_arrow.visible = false;    
    state = ControllerState.Lasering;
    global.total_valid_moves++;   
    global.laser_triggers++;  
    global.laser_cc = 0;
    global.laser_vc = 0;
}
else if lookat.type == AtomType.Iron or chosen.type == AtomType.Iron 
{           
    obj_arrow.visible = false;  
    state = ControllerState.MoveEnding;    
    scr_start_kickback(lookat, chosen);    
} 
else if lookat.type == AtomType.Lightning 
{    
    global.lightning_cc = 0;
    global.lightning_vc = 0;
    
    obj_arrow.visible = false;  
    state = ControllerState.LightningChosen;
    scr_lightning_chosen(lookat, chosen);    
    global.total_valid_moves++; 
    global.lightning_triggers++;
   
}
else if lookat.type == AtomType.Dop
{
    //dopple code
    chosen.state =  AtomState.Idle;
    var adj = 0, atom_type = chosen.type, color = chosen.p_color;
    var xx = lookat.x, yy = lookat.y;
    
    with(lookat)adj = scr_get_all_adjacent();
        
    for(var i=0; i<8; i++) if scr_ready(adj[i])  
    {   
        var dop = instance_create(xx,yy, obj_dop_particle);
        dop.atom = adj[i];
        dop.doppel_type = atom_type;
        dop.dopple_color = color;
        dop.alarm[0] = 2;       
        adj[i].state = AtomState.DoppelingStart;
    }
   
    var dop_center = instance_create(xx,yy, obj_dop_particle);
    dop_center.atom = lookat;
    dop_center.doppeling_time += room_speed / 2;
    dop_center.doppel_type = atom_type;
    dop_center.alarm[0] = 15;
    lookat.state = AtomState.DoppelingStart;
    state = ControllerState.Doppeling;
    global.total_valid_moves++;  
    global.doppel_triggers++;  
      
} else {    
    
    scr_normal_move_swapping(chosen, lookat);
    
    with(chosen) scr_move_atom(lookat.pos_x,  lookat.pos_y);
        
    //pop
    with(lookat) scr_eject_electrons(true);
    
    //state atom state 
    if scr_could_react(lookat, chosen)
    {
        global.total_valid_moves++;       
        lookat.state = AtomState.DestroyValid;
    }
    else 
    {
        global.total_invalid_moves++;        
        lookat.state = AtomState.DestroyNotValid;
    }
    
    lookat.visible = false;  
    lookat.x = 0;  
    lookat.y = 0; 
    state = ControllerState.MoveEnding;   
}

if global.total_valid_moves > prev_total_valid_moves
then global.consecutive_penalty = 0;
          
