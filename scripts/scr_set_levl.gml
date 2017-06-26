//argument0 => new level

energyLevel = argument0;

switch(energyLevel)
{
    case AtomEnergyLevel.Forth:
        image_speed = 1;
        obj_lightning_reaction_bolt.atom = id;
        obj_lightning_reaction_bolt.alarm[0] = 1;
        break;
    
    case AtomEnergyLevel.Third:
        sprite_index = excited_sprite_index;  
        image_speed = 1.5;
        break;
        
    case AtomEnergyLevel.Second:
        sprite_index = excited_sprite_index;
        image_speed = 1;   
        break;
        
    case AtomEnergyLevel.First:        
        image_speed = 1; 
        break;
}

image_index = 0;
