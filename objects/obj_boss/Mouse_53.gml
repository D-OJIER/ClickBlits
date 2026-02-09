if (obj_game.input_locked)
    exit;
if (obj_game.game_state != obj_game.STATE_PLAY)
    exit;

scr_damage_boss(5);
