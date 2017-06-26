global.lightning_created++;
scr_init_atom(argument0);

energyLevel = AtomEnergyLevel.Forth;
type = AtomType.Lightning;

sprite_index = spr_atom_lightning;
excited_sprite_index = spr_atom_lightning;
image_index = 0; 

p_color = $0021fe;
p_color2 = $fee800;

electrons = 4;
electrons[0] = spr_e1v;
electrons[1] = spr_e4g;
electrons[2] = spr_e1b;
electrons[3] = spr_e2o;

electron_pts = 0;
electron_pts[0] = 75;
electron_pts[1] = 75;
electron_pts[2] = 75;
electron_pts[3] = 75;

electron_colors = 0;
electron_colors[0] = $fe00d1; //violet 
electron_colors[1] = $50fe00; //green
electron_colors[2] = $ff6200; //organge
electron_colors[3] = $2648fe; //blue
