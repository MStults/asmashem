
//if greater than 10 minutes then show it
var last_show_diff = current_time - global.ad_last_shown; 

var mins10 = 10 * 60 * 1000;
if last_show_diff >= mins10 
then return true;

var mins2 = 2 * 60 * 1000;
if last_show_diff <= mins2 
then return false;

if is_undefined(global.lvl_name) then  return false;
if not is_string(global.lvl_name) then  return false;
if string_length(global.lvl_name) < 1 then  return false;
var digits = string_digits(global.lvl_name);
var lvl = real(digits);

if Reactor_Key == "PN" and lvl < 9 then  return false;


return true;
