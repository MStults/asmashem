//Returns Corner or Opening for a given direction
var prev = argument0
, dir = argument1
, d =16
, xx
, yy
, next = noone;

switch(dir)
{
    case PipeDirection.Up:
        yy = prev.y - d;
        xx = prev.x + (prev.sprite_width / 2) | 0; //center x
        break;
    case PipeDirection.Right:
        xx = prev.x + prev.sprite_width + d;
        yy = prev.y + (prev.sprite_height / 2) | 0; //center y
        break;
        
    case PipeDirection.Down:
        yy = prev.y + prev.sprite_height + d;
        xx = prev.x + (prev.sprite_width / 2) | 0; //center x
        break;
        
    case PipeDirection.Left:
        xx = prev.x - d;
        yy = prev.y + (prev.sprite_height / 2) | 0; //center y
        break;
}

//if it is an opening we are done if not keep searching
next = instance_position(xx, yy, obj_pipe_opening);
if instance_exists(next)
{   
    return next;
} else {
    //check for corner 
    next = instance_position(xx, yy, obj_pipe_C);
    if instance_exists(next)
    {       
        return next; //retrun corner
    } else {
        //check any pipe
        next = instance_position(xx, yy, obj_pipe_connection);
        if not instance_exists(next) then return noone; //no good
    }
} 
   
var result = noone;
switch(dir)
{
    case PipeDirection.Up:
       
        result = scr_pipe_update_connections(next, PipeDirection.Up); //* UP
        
        if not result  
        then result = scr_pipe_update_connections(next, PipeDirection.Left); //** LEFT
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Right); //*** RIGHT     
          
        break;
    case PipeDirection.Right:        
         
        result = scr_pipe_update_connections(next, PipeDirection.Right); //* RIGHT
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Down); //** DOWN
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Up); //*** UP
        
        break;
        
    case PipeDirection.Down:
           
        result = scr_pipe_update_connections(next, PipeDirection.Down); //*DOWN
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Right); //** RIGHT        
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Left); //*** LEFT        
        
        break;
    
        
    case PipeDirection.Left:
    
        result = scr_pipe_update_connections(next, PipeDirection.Left); //* LEFT 
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Up); //** UP
        
        if not result 
        then result = scr_pipe_update_connections(next, PipeDirection.Down);  //*** DOWN
        
        break;
}

return  result;

