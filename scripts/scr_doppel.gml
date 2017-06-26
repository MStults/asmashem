//argument0 => type

var new_type  = argument0;
if new_type == type then exit;
var old_energyLevel = energyLevel;
scr_change_type(new_type, false, in_game_piece);
scr_set_levl(old_energyLevel);
