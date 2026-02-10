// States
STATE_PLAY = 0;
STATE_WIN  = 1;

game_state = STATE_PLAY;
game_over = false;

// Timer
game_time = 0;
start_time = current_time;

end_alpha = 0;   // fade in
show_end = false;
btn_retry_x = 0;
btn_retry_y = 0;

btn_quit_x = 0;
btn_quit_y = 0;

panel_x = 0;
panel_y = 0;
btn_scale = 3;
	


final_time = 0;
input_locked = false;

audio_play_sound(bg_music, 1, true);


if (!instance_exists(obj_ui))
{
    instance_create_layer(0, 0, "Instances", obj_ui);
}

