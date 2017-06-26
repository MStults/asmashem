///argument0 => text
///argument1 => y

var ct = instance_create(((room_width / 2) | 0), argument1, obj_closing_text);
ct.role = argument0;
ct.name = "Mike Stults";
return ct;
