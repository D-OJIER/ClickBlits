life--;

if (life <= 0)
{
    var b = instance_find(obj_boss, 0);

    if (b != noone)
    {
        // Heal boss
        b.hp += 8;
        b.hp = min(b.hp, b.max_hp);
		
		 obj_game.input_locked = true;	

        // Play heal / miss animation
        with (b)
        {
            if (!dead && !healing)
            {
				healing=true;
				audio_play_sound(healing, 0, false);
                sprite_index = Golem_1_attack;
                image_index = 0;
                image_speed = 0.5;
            }
        }
    }

    instance_destroy();
}
