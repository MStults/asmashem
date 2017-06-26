var atom = argument0;
with(atom)
{
    scr_init_atom(false);
    visible = false;
    x = path_get_x( path_level_1, 0);
    y = path_get_y(path_level_1, 0);
}
instance_deactivate_object(atom);
ds_stack_push(global.replacement_atom_stack, atom);

