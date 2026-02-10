var t = (current_time - start_time) div 1000;
draw_text(16, 16, "Time: " + string(t));

if (game_state == STATE_WIN)
{
    t = final_time div 1000;
    draw_text(16, 36, "Cleared in " + string(t) + "s");
}

if (show_end)
{
    var gw = display_get_gui_width();
    var gh = display_get_gui_height();
	
	var panel_scale = 10;
	


    // Panel size
    var pw = sprite_get_width(win_panel) * panel_scale;
    var ph = sprite_get_height(win_panel) * panel_scale;

    // Center panel
    panel_x = (gw - pw) / 2;
    panel_y = (gh - ph) / 2;

    // Overlay
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0, 0, gw, gh, false);
	draw_set_alpha(1);
	draw_set_color(c_white);

    // Panel
    draw_sprite_ext(
        win_panel,
        0,
        panel_x,
        panel_y,
        panel_scale,
        panel_scale,
        0,
        c_white,
        1
    );
	
	
	var cx = panel_x + pw / 2;
	

    draw_text(cx - 60, panel_y + 28, "VICTORY!");
    draw_text(cx - 85, panel_y + 60, "BOSS DEFEATED!");
    draw_text(cx - 30, panel_y + 92,
    string_format(final_time / 1000, 2, 2)
    );
	
	btn_retry_x = cx - 90;
    btn_quit_x  = cx + 20;

    btn_retry_y = panel_y + ph - 48;
    btn_quit_y  = btn_retry_y;

   draw_sprite_ext(
    retry_btn,
    0,
    btn_retry_x,
    btn_retry_y,
    btn_scale,
    btn_scale,
    0,
    c_white,
    1
);

draw_sprite_ext(
    quit_btn,
    0,
    btn_quit_x,
    btn_quit_y,
    btn_scale,
    btn_scale,
    0,
    c_white,
    1
);

var bw = sprite_get_width(retry_btn) * btn_scale;
var bh = sprite_get_height(retry_btn) * btn_scale;



}




