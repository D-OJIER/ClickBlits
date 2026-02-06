var b = instance_find(obj_boss, 0);

if (b != noone)
{
    b.hp -= 15;

    if (b.hp < 0)
        b.hp = 0;
}

instance_destroy();
