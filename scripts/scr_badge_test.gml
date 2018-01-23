///BADGES TESTS AND SETUP
if TESTING
{
    ini_open("atom_smashem.ini");
    ini_key_delete('badges',string(BADGES.CHAIN_LIGHTNING_1));
    ini_key_delete('badges',string(BADGES.CHAIN_LASER_1));
    ini_key_delete('badges',string(BADGES.CHAIN_SHOTGUN_1));
    ini_key_delete('badges',string(BADGES.STAR_STREAK_1));
    ini_key_delete('badges',string(BADGES.FINISH));
    ini_close(); 

    scr_badge_add(BADGES.FINISH);
    scr_badge_add(BADGES.CHAIN_LIGHTNING_1);
    scr_badge_add(BADGES.CHAIN_LASER_1);
    scr_badge_add(BADGES.CHAIN_SHOTGUN_1);
    scr_badge_add(BADGES.STAR_STREAK_1);
}

//TEST CHAIN
scr_badge_record_and_test(BADGES.CHAIN_LIGHTNING_1, "CHAIN_LIGHTNING_1", global.lightning_max_cc, 100);
scr_badge_record_and_test(BADGES.CHAIN_LASER_1, "CHAIN_LASER_1", global.laser_max_cc, 25);
scr_badge_record_and_test(BADGES.CHAIN_SHOTGUN_1, "CHAIN_SHOTGUN_1", global.shotgun_max_cc, 50);

//TEST CERTIFIED
if room == rm_PN_3 then scr_badge_add(BADGES.CERTIFIED);

//TEST STREAK
if room != rm_PN_1 &&  room != rm_PN_2 &&  room != rm_PN_3
{
    var total_stars = star1_val + star2_val + star1_val;     
    scr_badge_test_streak(BADGES.STAR_STREAK_1, total_stars, 5);
    scr_badge_test_streak(BADGES.STAR_STREAK_2, total_stars, 10);
    scr_badge_test_streak(BADGES.STAR_STREAK_3, total_stars, 20);
}


//TEST MISSLES
scr_badge_record_and_test(BADGES.MISSLE1, "MISSLE1", global.missile_triggers, 100);
scr_badge_record_and_test(BADGES.MISSLE2, "MISSLE2", global.missile_triggers, 150);

//TEST MINE
scr_badge_record_and_test(BADGES.MINE, "MINE", global.mine_triggers, 100);

//TEST DOP
scr_badge_record_and_test(BADGES.DOP, "DOP", global.doppel_triggers, 100);

//TEST ANTI
scr_badge_record_and_test(BADGES.ANTI, "ANTI", global.anti_triggers, 100);

//TEST FINISH
if room == gvr_end_rm then scr_badge_add(BADGES.FINISH);

//TEST IRON
scr_badge_record_and_test(BADGES.IRON, "IRON", global.iron_killed_cnt, 100);

//TEST SHOTGUN
scr_badge_record_and_test(BADGES.SHOT1, "SHOT1", global.shotgun_triggers, 80);
scr_badge_record_and_test(BADGES.SHOT2, "SHOT2", global.shotgun_triggers, 200);

//TEST ATOMS
scr_badge_record_and_test(BADGES.ATOM1, "ATOM1", global.doppel_created, 50);
scr_badge_record_and_test(BADGES.ATOM2, "ATOM2", global.shotgun_created, 50);
scr_badge_record_and_test(BADGES.ATOM3, "ATOM3", global.missile_created, 50);
scr_badge_record_and_test(BADGES.ATOM4, "ATOM4", global.laser_created, 50);
scr_badge_record_and_test(BADGES.ATOM5, "ATOM5", global.anti_created, 50);
scr_badge_record_and_test(BADGES.ATOM6, "ATOM6", global.mine_created, 50);

return array_length_1d(global.badges_earned);
