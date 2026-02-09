if (obj_game.game_state == obj_game.STATE_WIN)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    draw_rectangle(0,0,room_width,room_height,true);
    draw_set_alpha(1);
    draw_set_color(c_white);

    draw_text(
        room_width/2 - 80,
        room_height/2 - 40,
        "BOSS DEFEATED!"
    );

    draw_text(
        room_width/2 - 110,
        room_height/2,
        "Time: " + string_format(obj_game.game_time,2,2)
    );

    draw_text(
        room_width/2 - 160,
        room_height/2 + 40,
        "Press R to Restart | ESC to Quit"
    );
}
