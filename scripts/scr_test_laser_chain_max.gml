
var arg0 = argument0 - 1;
var arg1 = argument1;
var arg2 = argument2;
var arg3 = argument3;
var arg4 = argument4;
var arg5 = argument5;

if scr_test_helper_penalty(arg1) then return false;
var cc = arg0 - 1;
return (global.laser_max_cc >= cc);

