//remove old
//with(obj_lvl_tile) instance_destroy();
var moving = false;
with(obj_lvl_tile) 
{
    if path_speed != 0 then moving = true;
}

if moving then return 0;

var mov_speed = 50;
if goto_last_level
{
    with(obj_lvl_tile) instance_destroy();
}
else 
{
    with(obj_lvl_tile) 
    {
        destroy = true;
        path_start(other.tile_path, mov_speed, path_action_stop, false);
    }
}

var start_y = y + 7;
var xx, yy, tile, lvl;
ini_open("atom_smashem.ini");

if not starting_room then starting_room = start_room;
var the_room = starting_room;
var str_room = string(starting_room);
//room_get_name
var has_locked_room = false;

//make sure first room always is unlocked 
show_back = start_room != starting_room;
if(starting_room == start_room and ini_read_real(Reactor_Key, "ul" + str_room, 0) < 1 )
{
    ini_write_real(Reactor_Key, "ul" + str_room, 1);
    ini_write_real(Reactor_Key, "sc" + str_room, 0);    
}

//SET previous_starting_room
var temp_room = the_room;
for(var i=0; i<16; i++)
{
    temp_room = room_previous(temp_room);
    if temp_room == -1
    {
        previous_starting_room = start_room;
        break;
    } else {
        previous_starting_room = temp_room;
    }
}

for(var row=0; row<row_cnt; row++)
{
    yy = start_y + offset_y * row + tile_h * row;    
    for(var col=0; col<col_cnt; col++)
    {
        xx = 16 + offset_x * (col + 1) + (tile_w - 12) * col;
        
        if not goto_last_level
        {
            if tile_path == path_lvl_title_left then xx += room_width;
            else xx -= room_width;
        }
        
        tile = instance_create(xx, yy, obj_lvl_tile);         
        if not goto_last_level then with(tile) path_start(other.tile_path, mov_speed, path_action_stop, false);
            
        lvl = string_digits(room_get_name(the_room));
        str_room = string(the_room);
        
        tile.room_index = the_room;
        tile.lvl = lvl;
        
        if(ini_read_real(Reactor_Key, "ul" + str_room, 0) < 1 )
        {
            tile.locked = true;
            has_locked_room = true;
        } else {    
            tile.locked = false;            
            tile.star_cnt = ini_read_real(Reactor_Key, "sc" + str_room, 0);            
        }      
        if the_room == end_room then break;
        the_room = room_next(the_room);    
        if the_room < 1 then break;        
    }
    if the_room < 1 or the_room == end_room then break;   
}

//Check to see if the next room on the the next page is unlocked. Used when screen is first started
str_room = string(the_room);
var next_unlocked = (ini_read_real(Reactor_Key, "ul" + str_room, 0) > 0);

//close the ini file
ini_close();

next_room_start = the_room;


if the_room < 1 or the_room == end_room 
then show_next = false;
else show_next = true;

load_levels = false;

if goto_last_level && not has_locked_room && show_next
{
    previous_starting_room = starting_room;
    starting_room = next_room_start;
    if next_unlocked then scr_level_menu_load_rooms();
} else {
    goto_last_level = false;
} 
