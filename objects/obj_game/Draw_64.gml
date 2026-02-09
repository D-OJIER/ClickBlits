var t = (current_time - start_time) div 1000;
draw_text(16, 16, "Time: " + string(t));

if (game_state == STATE_WIN)
{
     var t = final_time div 1000;
    draw_text(16, 36, "Cleared in " + string(t) + "s");
}
