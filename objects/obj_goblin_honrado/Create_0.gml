// Inherit the parent event
event_inherited();

image_xscale = 2
image_yscale = 2

#region Variáveis

colisoes = [obj_chao, obj_item_colisao]

// atributos
vida_max = 9500
vida = vida_max
vida_feedback = vida

tempo_tiro = 90
timer_tiro = 0

// movimento
meu_max_vel = 3
max_vel = meu_max_vel

dano = 4

//barra de vida
color_red = make_colour_rgb(255, 0, 64)
color_green = make_colour_rgb(90, 205, 140)
color_2 = make_colour_rgb(19, 19, 19)
color_3 = make_colour_rgb(19, 19, 19)
color_4 = c_white

lifebar_w = 1000
lifebar_h = 20

// drops
meu_drop = [{drop : "gold", chance : 100, n_min : 800, n_max : 800}, {drop : "claw", chance : 100, n_min : 500, n_max : 500}]

#endregion

#region Funções

ajusta_escala = function()
{
    
    if (velh > 0)
    {
        image_xscale = 2
    }
    else if (velh < 0)
    {
        image_xscale = -2
    }
}

toma_dano = function(_dano = 1, _tipo_dano = ["fisico"])
{
    toca_sfx(snd_dano_inimigo, .2, 4)
    
    timer_pisca = tempo_pisca
    
    if (array_contains(_tipo_dano, "raio"))
    {
        if (timer_molhado)
        {
            _dano = ceil(_dano * 1.5)
        }
        
        var _poca_agua = instance_position(x, y, obj_poca_agua)
        
        if (_poca_agua != noone)
        {
            _poca_agua.causa_dano()
        }
    }
    
    var _mostra_dano = instance_create_layer(x, y, "Dano", obj_mostra_dano)
    _mostra_dano.valor = _dano
    
    vida -= _dano
    
    if (vida <= 0)
    {
        
        
        dropa_item()
        
        efeito_soul_shard()
        instance_destroy()
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
        if (instance_exists(obj_player))
        {
           
            var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_slash)
            
            
            _meu_tiro.dano = dano
            
            
            var _dir = point_direction(x, y, obj_player.x, obj_player.y) 
            
            _meu_tiro.direction = _dir
            
            
            timer_tiro = tempo_tiro
            
        }
    	
    }
}

#endregion

