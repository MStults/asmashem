///returns number of stars earned  

var penalty = abs(global.total_penalty);

if global.challenge_met 
{
    if penalty > score then return 2;
    return 3; 
}


var pen_percent = penalty / score;    
if pen_percent >= 0.45 then return 0;
if pen_percent >= 0.35 then return 1;
return 2;


