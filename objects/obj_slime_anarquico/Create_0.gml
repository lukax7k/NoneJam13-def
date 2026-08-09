// Inherit the parent event
event_inherited();

image_xscale = 2
image_yscale = 2

#region Variáveis

colisoes = [obj_chao, obj_item_colisao]

// atributos
vida_max = 1700
vida = vida_max
vida_feedback = vida

tempo_tiro = 90
timer_tiro = 0

// movimento
meu_max_vel = 2
max_vel = meu_max_vel

dano = 2

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
meu_drop = [{drop : "gold", chance : 100, n_min : 200, n_max : 200}, {drop : "slime", chance : 100, n_min : 300, n_max : 300}]

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
        var _minha_poca = instance_create_layer(x, y, "Chao", minha_poca)
        
        if (array_contains(_tipo_dano, "fogo"))
        {
            _minha_poca.image_xscale = 2
            _minha_poca.image_yscale = 2
            _minha_poca.pega_fogo()
            
        }
        
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
            
            var _lado = irandom_range(1, 2)
           
            for (var i = 0; i < 8; i++) 
            {
                var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_tiro_anarquico)
                	
                _meu_tiro.dano = dano
                
                var _ang = 0
                var _diff = 360 / 8
                
                if (_lado == 1)
                {
                    _meu_tiro.lado = -1
                }
                else 
                {
                    _meu_tiro.lado = 1	
                }
                
                _meu_tiro.direction = _ang + _diff * i
            }
            
            
            timer_tiro = tempo_tiro
            
        }
    	
    }
}

#endregion

