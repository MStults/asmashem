var result = true;
with(obj_atom)
{
    if state != AtomState.Idle then result = false;
}
return result;
