//argument0 => Lightning Atom
//argument1 => Lightning Operand Atom

var l_atom = argument0;
var lightning_operand_atom = argument1;

scr_normal_move_swapping(lightning_operand_atom, l_atom);

with(instance_create(l_atom.x, l_atom.y, obj_lightning_operand))
{
    atom = lightning_operand_atom;
    lightning_atom = l_atom;
    state = LOState.Waiting4AtomMove;
}

with(lightning_operand_atom) scr_move_atom(l_atom.pos_x, l_atom.pos_y);   
lightning_operand_atom.state = AtomState.MovingToBeLightningOperand;
l_atom.state = AtomState.Wait;
