var badge = argument0;
var name = argument1;
var amount = argument2;
var threshold = argument3;

var total = scr_record_and_get_total(name, amount);
if total >= threshold then scr_badge_add(badge);
