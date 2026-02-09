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

// Win controls
if (game_state == STATE_WIN)
{
    if (keyboard_check_pressed(ord("R")))
    {
        room_restart();
    }

    if (keyboard_check_pressed(vk_escape))
    {
        game_end();
    }
}
