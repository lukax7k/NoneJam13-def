dano = 10
tempo_tiro = 120
timer_tiro = 0


image_xscale = 2
image_yscale = 2

ajusta_escala = function()
{
    if (instance_exists(obj_anjo))
    {
        if (obj_anjo.x > x + 10)
        {
            image_xscale = 2
        }
        else if (obj_anjo.x < x - 10)
        {
            image_xscale = -2
        }
    }
}


atirando = function()
{
    if (timer_tiro > 0)
    {
        timer_tiro --
    }
    else 
    {
        if (instance_exists(obj_anjo))
        {
           
            var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_tiro_slime_aliado)
            var _meu_tiro_2 = instance_create_layer(x, y, "Tiro", obj_tiro_slime_aliado)
            var _meu_tiro_3 = instance_create_layer(x, y, "Tiro", obj_tiro_slime_aliado)
            
            _meu_tiro.dano = dano
            _meu_tiro_2.dano = dano
            _meu_tiro_3.dano = dano
            
            var _dir = point_direction(x, y, obj_anjo.x, obj_anjo.y) 
            
            _meu_tiro.direction = _dir - 15
            _meu_tiro_2.direction = _dir
            _meu_tiro_3.direction = _dir + 15
            
            timer_tiro = tempo_tiro
            
        }
    	
    }
}