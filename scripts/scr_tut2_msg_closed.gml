with(obj_controller_tut2)
{
    tut_state = TUT1_STATE.DIALOG_UP;   
    state = ControllerState.Tut;    
    global.enable_user_input = false;
    
    obj_tut2_dialog1.text = 0;
    obj_tut2_dialog1.text[0] = "Move the atom onto";
    obj_tut2_dialog1.text[1] = "the isotope to";
    obj_tut2_dialog1.text[2] = "trigger it !";
            
    with(obj_tut2_dialog1) event_user(0);
    
    obj_tut_pointer.visible = true;
    tut_mask_on = true;
    
    //SET CHOSEN
    scr_tut2_set_chosen();
    
    with(obj_tut_pointer)
    {
        path_start(path_tut2_1, 5, path_action_restart, true);
    }    
    
    tut_state = TUT2_STATE.BEGIN_ACTIVATION;

}
