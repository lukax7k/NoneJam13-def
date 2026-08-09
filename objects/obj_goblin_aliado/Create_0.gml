dano = 10
tempo_tiro = 90
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
           
            var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_slash_aliado)
            
            
            _meu_tiro.dano = dano
            
            
            var _dir = point_direction(x, y, obj_anjo.x, obj_anjo.y) 
            
            _meu_tiro.direction = _dir
            
            
            timer_tiro = tempo_tiro
            
        }
    	
    }
}