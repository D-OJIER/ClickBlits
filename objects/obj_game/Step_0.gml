if (game_state == STATE_PLAY)
{
    game_time = (current_time - start_time) / 1000;
}
if (instance_number(obj_alert) == 0)
{
    if (irandom(360) == 0) // about every 6 sec
    {
        var xx = irandom_range(100, room_width - 100);
        var yy = irandom_range(100, room_height - 100);

        instance_create_layer(xx, yy, "Instances", obj_alert);
    }
}
if (game_state == STATE_WIN)
{
    audio_stop_sound(bg_music);
}


// Win controls
if (show_end)
{
    end_alpha = min(end_alpha + 0.05, 1);
}

// Handle end screen button clicks
if (show_end && mouse_check_button_pressed(mb_left))
{
    // Mouse in GUI coords
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    // Retry button
    if (point_in_rectangle(
        mx, my,
        btn_retry_x,
        btn_retry_y,
        btn_retry_x + sprite_get_width(retry_btn) * btn_scale,
        btn_retry_y + sprite_get_height(retry_btn) * btn_scale
    ))
    {
        room_restart();
    }

    // Quit button
    if (point_in_rectangle(
        mx, my,
        btn_quit_x,
        btn_quit_y,
        btn_quit_x + sprite_get_width(quit_btn) * btn_scale,
        btn_quit_y + sprite_get_height(quit_btn) * btn_scale
    ))
    {
        game_end();
    }
}

