
var arg0 = argument0 - 1;
var arg1 = argument1;
var arg2 = argument2;
var arg3 = argument3;
var arg4 = argument4;
var arg5 = argument5;

if scr_test_helper_penalty(arg1) 
{
    //show_debug_message("LIGHTNING FALSE");
    return false;
} else {
    var cc = arg0 - 1;
    var result = (global.lightning_max_cc >= cc);
     //show_debug_message("LIGHTNING " + string(result));
     return result;
 
}

