

var done = false;
with(argument0)
{                  
    image_alpha -= .05;
    if image_alpha < 0 then image_alpha = 0;
    if image_alpha == 0 then done = true;
}

return done;
