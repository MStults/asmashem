global.dialog_shown = false;

if instance_number(obj_controller) < 1 then return 0;

if obj_controller.state == ControllerState.Paused  
then obj_controller.state = obj_controller.temp_state;

pause_time_total += current_time - pause_time_start;

with(obj_atom)
{
    gravity = pauseGravity;   
    speed = pauseSpeed ;
    image_speed = pauseAnim;
          
    //Alarms
    for (var aT = 0; aT < 12; aT++)
    {
        alarm[aT] = currentAlarmTime[aT];
    }
     
    //Timelines
    timeline_running = isTimelineActive;
     
    //Paths
    path_speed = pathSpeed;
     
    //Particles
    //part_system_automatic_update(global.sys, true);

}
