if (global.pause or global.tela_power_up or global.in_transition) 
{
    image_speed = 0
    exit
}
else 
{
    image_speed = 1	
}

if (instance_exists(obj_player))
{
    x = obj_player.x
    y = obj_player.y
}
else 
{
    instance_destroy()	
}

explosao()

