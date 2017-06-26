scr_clear_selection();
chosen = active[T1A.CHOSEN];
//chosen.state = AtomState.Chosen0;           
state = ControllerState.Moving;            
obj_arrow.chosen = chosen;
obj_arrow.lookat = noone;
obj_arrow.visible = true;   
