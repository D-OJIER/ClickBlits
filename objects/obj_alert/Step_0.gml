life--;

if (life <= 0)
{
    var b = instance_find(obj_boss, 0);

    if (b != noone)
    {
        b.hp += 8;

        if (b.hp > b.max_hp)
            b.hp = b.max_hp;
    }

    instance_destroy();
}
