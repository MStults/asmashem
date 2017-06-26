switch(state)
{
    case ControllerState.Scanning: return "Scanning";
    case ControllerState.Moving: return "Moving";
    case ControllerState.MoveBegin: return "MoveBegin";
    case ControllerState.MoveEnding: return "MoveEnding";
    case ControllerState.MoveEndGp: return "MoveEndGp";
    case ControllerState.GlobalReactionStarted: return "GlobalReactionStarted";
    case ControllerState.Paused: return "Paused";
    case ControllerState.Shocking: return "Shocking";
    case ControllerState.Doppeling: return "Doppeling";
    case ControllerState.Lasering: return "Lasering";
    case ControllerState.Shotgunning: return "Shotgunning";
    case ControllerState.Missiling: return "Missiling";
    case ControllerState.AnitAnnihilation: return "AnitAnnihilation";
    case ControllerState.AnitWaitForFinish: return "AnitWaitForFinish";
    case ControllerState.LightningChosen: return "LightningChosen";
    default: return "Unknown: " + string(state);
}

