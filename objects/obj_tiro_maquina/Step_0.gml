if (global.pause or global.tela_power_up or global.in_transition) 
{
    speed = 0
    exit
}
else 
{
    if (instance_exists(obj_player))
    direction = point_direction(x, y, obj_player.x, obj_player.y)
    speed = 3
}

ajusta_depth()
destruindo()