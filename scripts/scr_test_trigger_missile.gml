///global.challenge_argument0 => min lightning count 
///global.challenge_argument1 => max allowed penalty (positive)

var arg0 = argument0;
var arg1 = argument1;
var arg2 = argument2;
var arg3 = argument3;
var arg4 = argument4;
var arg5 = argument5;

if scr_test_helper_penalty(arg1) then return false;
return (global.missile_triggers >= arg0);

