// Inherit the parent event
event_inherited();

image_xscale = 2
image_yscale = 2

#region Variáveis

colisoes = [obj_chao, obj_item_colisao]

// atributos
vida_max = 18000
vida = vida_max
vida_feedback = vida

tempo_tiro = 3
timer_tiro = 0

// movimento
meu_max_vel = 2.5
max_vel = meu_max_vel


dano = 5
angulo = 0

//barra de vida
color_red = make_colour_rgb(255, 0, 64)
color_green = make_colour_rgb(90, 205, 140)
color_2 = make_colour_rgb(19, 19, 19)
color_3 = make_colour_rgb(19, 19, 19)
color_4 = c_white

lifebar_w = 1000
lifebar_h = 20

minha_poca = obj_poca_slime

// drops
meu_drop = [{drop : "gold", chance : 100, n_min : 2400, n_max : 2400},]

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
            angulo += 2
            
           
            for (var i = 0; i < 4; i++) 
            {
                var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo)
                	
                _meu_tiro.dano = dano
                
               
                var _diff = 360 / 4
                
                
                _meu_tiro.direction = angulo + _diff * i
                _meu_tiro.vel = 10
                _meu_tiro.vida = 600
            }
            
            
            timer_tiro = tempo_tiro
            
        }
    	
    }
}

#endregion

