
var done = false;
with(argument0)
{
    visible = true; 
    image_alpha += .05;
    if image_alpha >= 1 then image_alpha = 1;
    if image_alpha == 1 then done = true;
}

return done;
