if (global.pause or global.tela_power_up or global.in_transition) 
{
    speed = 0
    exit
}
else 
{
    speed = vel
    var _rastro = instance_create_depth(x, y, depth + 10, obj_rastro_tiro)
    _rastro.spr = sprite_index
}

ajusta_depth()
destruindo()