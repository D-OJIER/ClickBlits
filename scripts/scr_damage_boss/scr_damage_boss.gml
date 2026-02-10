function scr_damage_boss(amount)
{
    // Block damage if not allowed
    if (!can_be_hit || dead || obj_game.input_locked)
        return;

    can_be_hit = false;
	
	audio_play_sound(hit_sound, 0, false);

    // Apply damage
    hp -= amount;
    hp = clamp(hp, 0, max_hp);

    // Play hit animation ONCE
    sprite_index = Golem_1_hurt;
    image_index = 0;
    image_speed = 0.3;

    // Wait for FULL animation (safe)
    alarm[0] = ceil(image_number / image_speed);

    // Spawn hit effect
    var fx = instance_create_layer(
        mouse_x,
		mouse_y,
        "Instances",
        obj_hit_fx
    );

    fx.sprite_index = hit_vfx;
}
