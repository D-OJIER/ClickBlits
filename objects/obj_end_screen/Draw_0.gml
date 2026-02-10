// Draw panel sprite
draw_self();

// Use big font
draw_set_font(fnt_big);
draw_set_color(c_white);

// Center of panel
var cx = x + sprite_width / 2;

// Title
draw_text(cx - 60, y + 30, "VICTORY!");

// Time
draw_text(
    cx - 80,
    y + 70,
    "Time: " + string_format(obj_game.final_time / 1000, 2, 2)
);

// Reset font
draw_set_font(-1);
