var ui_array = argument0;
var len = argument1;
var check_UI_is_moving = false;

for(var i=0; i<len; i++) 
    with(ui_array[i])
        if speed != 0 or path_speed != 0 
            then check_UI_is_moving = true;//check if already moving 
            
return check_UI_is_moving;
            
