var badge = argument0;
var text =0;

switch(badge)
{
    case BADGES.CHAIN_LIGHTNING_1: 
        text[0] = "Lightningium Chain";
        text[1] = "Triple Charged";
        break;
  
    case BADGES.CHAIN_LASER_1: 
        text[0] = "Lasergen Chain";
        text[1] = "Optical maser";
        break;
  
    case BADGES.CHAIN_SHOTGUN_1: 
        text[0] = "Shotgunium Chain";
        text[1] = "Fish in a barrel";     
        break;  
    case BADGES.CERTIFIED: 
        text[0] = "Atom Smashem";
        text[1] = "Certification";
        break;
        
    case BADGES.STAR_STREAK_1: 
        text[0] = "Winnig Steak 1";
        text[1] = "Stickler";
        break;
        
    case BADGES.STAR_STREAK_2: 
        text[0] = "Winnig Steak 2";
        text[1] = "Perfectionist";
        break;
        
    case BADGES.STAR_STREAK_3: 
        text[0] = "Winnig Steak 3";
        text[1] = "Domination";
        break;
        
    case BADGES.UNKNOWN: 
        text[0] = "? ? ?";
        text[1] = "";
        break;
        
    case BADGES.MISSLE1: 
        text[0] = "Missle";
        text[1] = "Commander";
        break;
        
    case BADGES.MISSLE2: 
        text[0] = "Missle";
        text[1] = "Commander-in-chief";
        break;
        
    case BADGES.MINE: 
        text[0] = "Master exploder";
        text[1] = "";
        break;
        
    case BADGES.DOP: 
        text[0] = "Doppelgangorgen";
        text[1] = "Look-alike";
        break;
        
}

return text;
















