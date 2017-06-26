//argument0 => mine Atom
//argument1 => mine Operand Atom

var m_atom = argument0;
var m_operand_atom = argument1;

scr_normal_move_swapping(m_operand_atom, m_atom);

//mine code
with(instance_create(m_atom.x, m_atom.y, obj_mine_explosion))
{
    atom = m_operand_atom;
    mine_atom = m_atom;
    alarm[0] = 2;
}
 
with(m_operand_atom) scr_move_atom(m_atom.pos_x, m_atom.pos_y);   
m_operand_atom.state = AtomState.MovingToBeMineOperand;
m_atom.state = AtomState.MineExplosionStart;
