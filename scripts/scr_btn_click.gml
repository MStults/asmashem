//argument0 => left
//argument1 => top
//argument2 => right
//argument3 => bottom
//returns:
// 0 => not in button
// 1 => hover over button
// 2 => button down
// 3 => button released 

var left = argument0;
var top = argument1;
var right = argument2;
var bottom = argument3;

if not point_in_rectangle(device_mouse_x(0), device_mouse_y(0), left, top, right, bottom) 
then return 0;

if device_mouse_check_button_released(0, mb_left) 
then return 3;

if not device_mouse_check_button(0, mb_left)
then return 1;
else  return 2;
