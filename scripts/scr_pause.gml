global.dialog_shown = true;

if instance_number(obj_controller) < 1 then return 0;

obj_controller.temp_state = obj_controller.state;
obj_controller.state = ControllerState.Paused;

pause_time_start = current_time;

with(obj_atom)
{
    pauseGravity = gravity;
    gravity = 0;
  
    pauseSpeed = speed;
    speed = 0;
     
    pauseAnim = image_speed;
    image_speed = 0;    
    
    //Audio
    //if ( hasSound )
    //{
    //    audio_pause_sound(mySound);
    //}
    
    //Alarms
    currentAlarmTime = 0;
    for (var aT = 0; aT < 12; aT++)
    {
        currentAlarmTime[aT] = alarm[aT];
        alarm[aT] = -1;
    }
    
    //Timelines  
    isTimelineActive = timeline_running;
    timeline_running = false;
       
    //Paths   
    pathSpeed = path_speed;
    path_speed = 0;
   
    
    //Particles
    //part_system_automatic_update(global.sys, false);
}
