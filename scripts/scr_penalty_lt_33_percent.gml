var penalty = abs(global.total_penalty);
var pen_percent = penalty / score;    
if pen_percent <= 0.33 then return true;
else return false;
