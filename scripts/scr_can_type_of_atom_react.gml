switch(argument0.state)
{
    case AtomState.CombiningAxis:
    case AtomState.CombiningKid:
    case AtomState.CombineEnding:
    case AtomState.Chosen0:
    case AtomState.Chosen1:
    case AtomState.Paused:
    case AtomState.Recycle:
    case AtomState.Recycling:  
        return false;
    default: return true;
    
}
