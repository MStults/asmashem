
if not scr_can_share() then exit;

var the_score = argument0;
var the_level = argument1;
var r_key = argument2;
var star_cnt = argument3;

var reactor = "Pleasant Nuclear";
if(r_key == "BCP")
{
    reactor = "Big City Power";
}

if(r_key == "GVR")
{             
    reactor = "Golden Valley";
}


var descr = "Reactor " + string(reactor) + ", Level " + string(the_level) + ", Score " + string(the_score) + ", Stars earned " + string(star_cnt) + " of 3.";
var map = ds_map_create();
ds_map_add(map, "name", "Atom Smashem");
ds_map_add(map, "caption", "BY SUPER NOMI" );
ds_map_add(map, "description", descr);
ds_map_add(map, "link",  "https://atomsmashem.com/");
ds_map_add(map, "picture", "https://atomsmashem.com/resources/img/fbIcon-min.jpg");

facebook_dialog("feed", map, -1);
ds_map_destroy(map);

