if (random(100) < 1)
{
    if (!instance_exists(obj_alert))
    {
        instance_create_layer(
            random(room_width),
            random(room_height),
            "Instances",
            obj_alert
        );
    }
}

var b = instance_find(obj_boss, 0);

if (b != noone && b.hp <= 0 && !finished)
{
    finished = true;
    final_time = current_time - start_time;
}
