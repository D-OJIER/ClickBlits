var boss = instance_find(obj_boss, 0);

var bar_x = 20;
var bar_y = 20;
var bar_scale = 2.0; // Try: 1.2 , 1.5 , 2.0



if (boss != noone && boss.max_hp > 0)
{
    var ratio = boss.hp / boss.max_hp;
    ratio = clamp(ratio, 0, 1);

    // Draw fill (scaled + clipped by ratio)
    draw_sprite_ext(
        hp_fill,
        0,
        bar_x,
        bar_y,
        ratio * bar_scale, // IMPORTANT
        bar_scale,
        0,
        c_white,
        1
    );
}


