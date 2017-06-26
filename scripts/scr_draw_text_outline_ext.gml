/// draw_text_outline(x, y, text, textColor, outlineColor, xscale, yscale);

var xx=argument0;
var yy=argument1;
var text=argument2;
var tcolor=argument3;
var ocolor=argument4;
var scalex = argument5;
var scaley = argument6;

var pcolor=draw_get_color();
//draw_text_ext_transformed(center_x, text_y, lvl, 0, 100, .65, .65, 0);
draw_set_color(ocolor);
draw_text_ext_transformed(xx-1, yy, text, 0, room_width, scalex, scaley, 0);
draw_text_ext_transformed(xx+1, yy, text, 0, room_width, scalex, scaley, 0);
draw_text_ext_transformed(xx, yy-1, text, 0, room_width, scalex, scaley, 0);
draw_text_ext_transformed(xx, yy+1, text, 0, room_width, scalex, scaley, 0);

draw_set_color(tcolor);
draw_text_ext_transformed(xx, yy, text, 0, room_width, scalex, scaley, 0);
