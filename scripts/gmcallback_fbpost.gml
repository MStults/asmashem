scr_play_snd(Sound.Click);

with(obj_level_summary){
    var total_stars = star1_val + star2_val + star1_val; 
    AtomFBPostScore(Reactor_Key, global.lvl_name, total, total_stars);
}

