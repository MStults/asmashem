

lightning_state = LighthingAtomState.Idle;
cooking_state = CookedState.NotCooked;
energyLevel = AtomEnergyLevel.First;
image_speed = 1;
if instance_exists(lightning_ball) then with(lightning_ball)instance_destroy(); 
lightning_ball = noone;
death_cnt_checked = false;
in_game_piece = argument0;
if not state == AtomState.Piping then pipe_end = noone;
