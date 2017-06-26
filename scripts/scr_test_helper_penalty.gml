
var max_penalty = argument0;
if max_penalty < 1 then return false;
return  abs(global.total_penalty) >= max_penalty;
