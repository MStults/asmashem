
scr_init_atom(argument0);

type = AtomType.Iron;
starting_type = AtomType.Five;
sprite_index = spr_atom_iron;
excited_sprite_index = spr_atom_iron;
image_index = irandom(image_number - 1);

energyLevel = AtomEnergyLevel.Second;

p_color = c_red; //16776960;
p_color2 = c_dkgray;// 10742610;
electrons = 0;
electrons[0] = spr_e_red;
electrons[1] = spr_e_red;
electrons[2] = spr_e_red;
electrons[3] = spr_e_red;

electron_pts = 0;
electron_pts[0] = 50;
electron_pts[1] = 50;
electron_pts[2] = 50;
electron_pts[3] = 50;

electron_colors = 0;
electron_colors[0] = c_lime;
electron_colors[1] = c_lime;
electron_colors[2] = c_lime;
electron_colors[3] = c_lime;
