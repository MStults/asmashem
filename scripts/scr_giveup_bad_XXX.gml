
var amt;
switch(global.consecutive_penalty)
{
    case 1: amt = 1; break;
    case 2: amt =  5; break;
    case 3: amt = 10; break;
    default: amt = 20; break;     
}

for(var i=0; i<amt; i++)
    scr_giveup_electrons(ElectronsType.Bad, false, 1); 
