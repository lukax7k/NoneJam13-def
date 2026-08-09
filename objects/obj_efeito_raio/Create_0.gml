
alvos_choque = []
array_choque = [obj_inimigo, obj_condutor]

tempo_choque = 20
timer_choque = tempo_choque

pai = noone

var _range = 96
        
var _lista_alvos = ds_list_create()

var _alvos = collision_circle_list(x, y, _range, array_choque, 0, 1, _lista_alvos, 0)

var _max_enemies = clamp(_alvos, 0, 3 + global.aumento_alcance_raio)


for (var i = 0; i < _max_enemies; i++) 
{
    array_push(alvos_choque, ds_list_find_value(_lista_alvos, i))	
}

timer_choque = tempo_choque


for (var i = 0; i < _max_enemies; i++) 
{

    var _alvo_atual = ds_list_find_value(_lista_alvos, i)
    
    if (instance_exists(_alvo_atual))
    {
    _alvo_atual.toma_dano(1 + global.aumento_dano_raio * 2, ["raio"]) 
    }
    
        
}

ds_list_destroy(_lista_alvos)


efeito_choque = function()
{
    if (timer_choque)
    {
        
        for (var i = 0; i < array_length(alvos_choque); i++) 
        {
            var _alvo_atual = alvos_choque[i]
            
            if (instance_exists(_alvo_atual))
            {
                var _dist = point_distance(x, y, _alvo_atual.x, _alvo_atual.y)
                var _ang = point_direction(x, y, _alvo_atual.x, _alvo_atual.y)
                
                var _sprite_h = sprite_get_height(spr_efeito_raio);
                var _yscale = _dist / _sprite_h;
                
                if (array_length(alvos_choque) > 0)
                {
                    toca_sfx(snd_shock, .3, 5)
                }
                
                
                draw_sprite_ext(spr_efeito_raio, timer_choque, x, y, 1, _yscale, _ang + 90, c_white, .8)
            }
            
        }
        
        timer_choque --
    }
    else 
    {
        alvos_choque = []	
    }
}