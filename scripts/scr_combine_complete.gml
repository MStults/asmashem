global.combining_cnt -= 1;

var multipler = 1;
if kids_cnt > 2 then multipler = 1.5; //match 4
if kids_cnt > 3 then multipler = 2; //match 5
if kids_cnt > 4 then multipler = 3; //match 6 or more

if multipler > 1
{
    with(instance_create(x + ATOM_H_W,y + ATOM_H_H, obj_multiplier))
    {
       if multipler == 1.5 then sprite_index = spr_x1_5;
       if multipler == 2 then sprite_index = spr_x2;
    }
}


if(scr_is_excited()) scr_giveup_electrons_cc(ElectronsType.Excited, multipler);
//else scr_giveup_electrons(ElectronsType.Good, true);

var el1=0, el2=0, el3=0, el4=0;
switch(energyLevel)
{
    case AtomEnergyLevel.First : el1++;break;
    case AtomEnergyLevel.Second : el2++;break;
    case AtomEnergyLevel.Third : el3++;break;
    case AtomEnergyLevel.Forth : el4++;break;
}

//deal with the kids
for(var i=0; i< kids_cnt; i++) with(kids[i])
{
    if energyLevel >  AtomEnergyLevel.First
    then with(other) scr_giveup_electrons_cc(ElectronsType.Excited, multipler);   
    else with(other) scr_giveup_electrons_cc(ElectronsType.Good, multipler);
    
    state = AtomState.Recycle;
    switch(energyLevel)
    {
        case AtomEnergyLevel.First : el1++;break;
        case AtomEnergyLevel.Second : el2++;break;
        case AtomEnergyLevel.Third : el3++;break;
        case AtomEnergyLevel.Forth : el4++;break;
    }
}

if  el4 > 0 
    or el3 > 0 
    or el2 > 2 
    or el1 > 4
    or (el2 > 0 and kids_cnt > 2)
    or kids_cnt > 3
{
    energyLevel = AtomEnergyLevel.Forth;    
} 
else if el2 > 0 
    or el1 > 3
{
    energyLevel = AtomEnergyLevel.Third;
} 
else 
{
    energyLevel = AtomEnergyLevel.Second;
}

//energyLevel = AtomEnergyLevel.Second;

scr_set_levl(energyLevel);


p_part = global.p_atom_spark;
p_cnt = 6;                     
p_infront = true;

//effect_create_above(ef_ring, x + atom_w_half, y + atom_h_half, 1, p_color); <- Caused Strange error on HTML5
     
sprite_index = excited_sprite_index;
