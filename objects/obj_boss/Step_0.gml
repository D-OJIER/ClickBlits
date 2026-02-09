// Stop everything if game ended
if (obj_game.game_state != obj_game.STATE_PLAY)
{
    exit;
}
if (healing)
{
    if (image_index >= image_number - 1)
    {
        // End heal animation
        healing = false;

        obj_game.input_locked = false;

        sprite_index = Golem_1_idle;
        image_speed = 0.2;
    }

    exit; // IMPORTANT: don't allow other logic
}

// Handle death (once)
if (hp <= 0 && !dead)
{
    dead = true;

    sprite_index = Golem_1_die;
    image_index = 0;
    image_speed = 0.2;

    obj_game.game_state = obj_game.STATE_WIN;
    obj_game.game_over = true;
	
	 obj_game.final_time = current_time - obj_game.start_time
}

// Freeze boss after death
if (dead)
{
    exit;
}
