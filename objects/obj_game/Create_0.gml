// States
STATE_PLAY = 0;
STATE_WIN  = 1;

game_state = STATE_PLAY;
game_over = false;

// Timer
game_time = 0;
start_time = current_time;

final_time = 0;
input_locked = false;


if (!instance_exists(obj_ui))
{
    instance_create_layer(0, 0, "Instances", obj_ui);
}

