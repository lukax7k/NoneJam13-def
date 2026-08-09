

if (vspeed <= 0)
{
    tween(id, "vspeed", 1, tween_animation.circ_out, 30)
}

if (vspeed > 0)
{
    tween(id, "alfa", 0, tween_animation.ease, 20)
    
    if (alfa <= 0)
    {
        instance_destroy()
    }
}