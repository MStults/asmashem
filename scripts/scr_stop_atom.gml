x = pos_x;
y = pos_y;
speed = 0;       
last_dist = -1;           
gravity = 0; 
/**
switch(state)
{
    case AtomState.MoveToPipeOpening:
    case AtomState.PipeOpeningReached:
    case AtomState.MovingToBeKickedback:
        state = AtomState.Kickback;
        break;
    
    case  AtomState.MovingToBeShotgunOperand:
    case  AtomState.MovingToBeMissileOperand:
    case  AtomState.MovingToBeMineOperand:
        state = AtomState.WaitQuietly;
        break;
    case AtomState.MovingToBeLaserOperand:
    case AtomState.MovingToBeAntiOperand:
    case AtomState.MovingToBeLightningOperand:
        state = AtomState.Wait;
        break;        
    default:
         state = AtomState.Idle; 
         break;
}
**/

if state == AtomState.MoveToPipeOpening 
then state = AtomState.PipeOpeningReached;
else if state == AtomState.MovingToBeKickedback 
then state = AtomState.Kickback;

else if state == AtomState.MovingToBeShotgunOperand 
or state == AtomState.MovingToBeMissileOperand 
or state == AtomState.MovingToBeMineOperand
then state = AtomState.WaitQuietly;

else if state == AtomState.MovingToBeLaserOperand
or state == AtomState.MovingToBeAntiOperand
or state == AtomState.MovingToBeLightningOperand
then state = AtomState.Wait;
else state = AtomState.Idle; 


depth = 0;

