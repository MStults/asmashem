
var valid = argument0;

state = AtomState.Recycle;
if valid and scr_is_excited() then scr_giveup_electrons(ElectronsType.Excited, false, 1);
if not valid then scr_giveup_electrons(ElectronsType.Bad, false, 1); 
