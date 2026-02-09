if (point_in_rectangle(mouse_x,mouse_y,300,300,380,360))
{
    btn_scale = lerp(btn_scale,1.1,0.2);
}
else
{
    btn_scale = lerp(btn_scale,1,0.2);
}
