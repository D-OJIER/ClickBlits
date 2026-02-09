function scr_damage_boss(amount)
{
    if (!can_be_hit || dead || obj_game.input_locked) 
        return; 

    can_be_hit = false;

    hp -= amount;
    hp = clamp(hp, 0, max_hp);

    // Play hit animation
    sprite_index = Golem_1_hurt;
    image_index = 0;
    image_speed = 0.3;

    alarm[0] = sprite_get_number(Golem_1_hurt) / image_speed;
}
