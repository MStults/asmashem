///global.challenge_argument0 => score that must be reached before a penalty occurs 

var arg0 = argument0;
var arg1 = argument1;
var arg2 = argument2;
var arg3 = argument3;
var arg4 = argument4;
var arg5 = argument5;


if global.total_invalid_moves > 0 then return false;
return (score >= arg0);
