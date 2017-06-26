
var arg0 = argument0;
var arg1 = argument1;
var arg2 = argument2;
var arg3 = argument3;
var arg4 = argument4;
var arg5 = argument5;

if scr_test_helper_penalty(arg1) 
{
    //show_debug_message("ANTI FALSE " + string(arg1));
    return false;
} else {
    var result = (global.anti_created >= arg0);
    //show_debug_message("ANTI " + string(result));
    return result;
}

