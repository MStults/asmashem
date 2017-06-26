///argument0 -> Sound enumeration e.g. Sound.AtomPop
/**
with(obj_init)
{
    sound_enum_value = argument0;
    event_user(0);   
}
exit;
**/
  
if os_browser == browser_ie then with(obj_init)
{
    sound_enum_value = argument0;
    event_user(0);    
}
else
{
    var snd;
    switch(argument0)
    {
        case Sound.AtomPop    : snd = snd_atom_pop; break;
        case Sound.AtomMerge  : snd = snd_atom_merge; break;
        case Sound.Suction    : snd = snd_suction; break;
        case Sound.Click      : snd = snd_click; break;
        case Sound.Start      : snd = snd_start; break;
        case Sound.Error      : snd = snd_error; break;
        case Sound.Coin       : snd = snd_coin_pickup; break;
        case Sound.Spark1     : snd = snd_spark1; break;
        case Sound.Doppel     : snd = snd_doppel; break;
        case Sound.Whoosh     : snd = snd_whoosh; break;
        case Sound.Shotgun    : snd = snd_shotgun; break;
        case Sound.Move       : snd = snd_move; break;
        case Sound.Spark0     : snd = snd_spark0; break;
        case Sound.ElectricBuzz: snd = snd_electric_buzz; break;
        case Sound.LaserStart : snd = snd_laser_start; break;
        case Sound.Laser      : snd = snd_laser; break;
        case Sound.LaserEnd   : snd = snd_laser_end; break;
        case Sound.Missile    : snd = snd_missile; break;
        case Sound.MissileExpl: snd = snd_missile_explosion; break;
        case Sound.Antimatter : snd = snd_antimatter; break;
        case Sound.Win        : snd = snd_win; break;
        case Sound.Click2     : snd = snd_click2; break;
        case Sound.Stars      : snd = snd_stars; break; 
        case Sound.Clank      : snd = snd_metal_clank; break; 
        case Sound.Reactor      : snd = snd_reactor; break; 
        case Sound.Explosion : snd = snd_explosion; break;
        
    }
    
    var index = audio_play_sound(snd,50,false);
    audio_sound_gain(index, global.fx_snd_vol, 0);      
}


