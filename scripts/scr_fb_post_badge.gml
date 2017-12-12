

var url = "https://atomsmashem.com/badges/"
var badge = argument0;

switch(badge)
{
    case BADGES.CHAIN_LIGHTNING_1: 
        url += "chain_lightning.html";
        break;
  
    case BADGES.CHAIN_LASER_1: 
         url += "chain_laser.html";
        break;
  
    case BADGES.CHAIN_SHOTGUN_1: 
         url += "shot1.html";
        break;  
    case BADGES.CERTIFIED: 
         url += "shot2.html";
        break;
        
    case BADGES.STAR_STREAK_1: 
         url += "streak1.html";
        break;
        
    case BADGES.STAR_STREAK_2: 
         url += "streak2.html";
        break;
        
    case BADGES.STAR_STREAK_3: 
         url += "streak3.html";
        break;
                
    case BADGES.MISSLE1: 
         url += "missile1.html";
        break;
        
    case BADGES.MISSLE2: 
         url += "missile_good.html";
        break;
        
    case BADGES.MINE: 
         url += "mine_good.html";
        break;
        
    case BADGES.DOP: 
         url += "dop.html";
        break;
        
    case BADGES.ANTI: 
         url += "anti.html";
        break;
        
     case BADGES.FINISH: 
         url += "finish.html";
        break;
        
    case BADGES.IRON: 
         url += "iron.html";
        break;
                
    case BADGES.ATOM1: 
         url += "one.html";
        break;
        
    case BADGES.ATOM2: 
         url += "two.html";
        break;
        
    case BADGES.ATOM3: 
        url += "three.html";
        break;
        
    case BADGES.ATOM4: 
         url += "four.html";
        break;
        
    case BADGES.ATOM5: 
        url += "five.html";
        break;
        
    case BADGES.ATOM6: 
        url += "six.html";
        break;
        
    default:
        url += "index.html";
        break;
        
}

var map = ds_map_create();
ds_map_add(map, "link",  url);
facebook_dialog("feed", map, -1);
ds_map_destroy(map);
