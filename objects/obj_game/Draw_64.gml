var t = (current_time - start_time) div 1000;
draw_text(16, 16, "Time: " + string(t));

if (finished)
{
    draw_text(16, 36, "Cleared in " + string(final_time div 1000) + "s");
}
