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




