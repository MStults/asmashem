//argument0 = base width;
//argument1 = base height;
//argument2 = current width
//argument3 = current height
//argument4 = center window (true, false);

var aspect = argument0 / argument1;
var w, h;
if argument2 / aspect > argument3
{
    w = (argument3 * aspect) | 0;
    h = argument3 | 0;
}
else
{
    w = argument2 | 0;
    h = (argument2 / aspect) | 0;
}

surface_resize(application_surface, w, h); 
window_set_size(w, h);
display_set_gui_size(argument0,argument1);
