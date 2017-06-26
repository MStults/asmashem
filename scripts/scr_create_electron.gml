//argument0 -> electron spr_index 
//argument1 -> points
//argument2 -> follow object if true
//argument3 -> delay (0-10)

//start at center
var cx = pos_x + atom_w_half, cy = pos_y + atom_h_half;
var obj_e = instance_create(cx,cy, obj_electron);
var delay = argument3;

obj_e.atom = id;
obj_e.atomState = state;
obj_e.follow = argument2;
obj_e.depth = depth - 1;

obj_e.sprite_index = argument0;    
obj_e.points = argument1;

obj_e.alarm[0] = global.launching_electron_cnt * delay + 1;  
global.launching_electron_cnt++;   

switch (argument1)
{
    case 50:        
        obj_e.spr_p_index = spr_p50;
        break;
    case 75:        
        obj_e.spr_p_index = spr_p75;
        break;   
    case 100:        
        obj_e.spr_p_index = spr_p100;
        break;   
    case 125:        
        obj_e.spr_p_index = spr_p125;
        break;   
    case 150:        
        obj_e.spr_p_index = spr_p150;
        break;  
    case 175:        
        obj_e.spr_p_index = spr_p175;
        break;  
    case 200:        
        obj_e.spr_p_index = spr_p200;
        break;
        
    case -50:
        obj_e.spr_p_index = spr_penalty50;
        break;
    case -200:
        obj_e.spr_p_index = spr_penalty200;
        break;
    case -500:
       obj_e.spr_p_index = spr_penalty500;
       break;
    case -1000:
        obj_e.spr_p_index = spr_penalty1000;
        break;
    case -5000:
       obj_e.spr_p_index = spr_penalty5000;
       break;
   
       
    case -1:
        obj_e.spr_p_index = spr_penalty1;
        break;
    case -2:
        obj_e.spr_p_index = spr_penalty2;
        break;
    case -4:
       obj_e.spr_p_index = spr_penalty4;
       break;
    case -8:
        obj_e.spr_p_index = spr_penalty8;
        break;
    case -16:
       obj_e.spr_p_index = spr_penalty16;
       break;
       
    case -32:
        obj_e.spr_p_index = spr_penalty32;
        break;
        
        
    case -64:
        obj_e.spr_p_index = spr_penalty64;
        break;
    case -128:
       obj_e.spr_p_index = spr_penalty128;
       break;
        
    case -256:
      obj_e.spr_p_index = spr_penalty256;
      break;
        
    case -512:
      obj_e.spr_p_index = spr_penalty512;
      break;
      
    case -1024:
        obj_e.spr_p_index = spr_penalty1024;
        break;
        
    case -2048:
        obj_e.spr_p_index = spr_penalty2048;
        break;
}

return obj_e;
