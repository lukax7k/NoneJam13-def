if (global.pause or global.tela_power_up or global.in_transition) 
{
    speed = 0
    exit
}
else 
{
    direction += lado
    speed = 5
    var _rastro = instance_create_depth(x, y, depth + 10, obj_rastro_tiro)
    _rastro.spr = sprite_index
}

ajusta_depth()
destruindo()