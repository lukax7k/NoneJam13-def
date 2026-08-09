#region Variaveis

vida = 3

tempo_pisca = 10
timer_pisca = 0

array_choque = [obj_inimigo, obj_condutor]
alvos_choque = []
tempo_choque = 20
timer_choque = 0

minha_colisao = instance_create_layer(x - sprite_width/2, y - 4, "Colisao", obj_item_colisao)

#endregion

#region Funções

toma_dano = function(_dano, _tipo)
{
    if (!array_contains(_tipo, "raio"))
    {
        vida -= _dano
        timer_pisca = tempo_pisca
    }
    else 
    {
        efeito_choque()	
    }
    
    if (vida <= 0)
    {
        instance_destroy()
    }
}

efeito_choque = function()
{
   
    var _range = 96

    var _lista_alvos = ds_list_create()
    
    var _alvos = collision_circle_list(x, y, _range, obj_inimigo, 0, 1, _lista_alvos, 0)
    
    var _max_enemies = clamp(_alvos, 0, 5)
    
    
    for (var i = 0; i < _max_enemies; i++) 
    {
        array_push(alvos_choque, ds_list_find_value(_lista_alvos, i))	
    }
    
    timer_choque = tempo_choque
    
    
    for (var i = 0; i < _max_enemies; i++) 
    {
    
        var _alvo_atual = ds_list_find_value(_lista_alvos, i)
        
        _alvo_atual.toma_dano(1, ["raio"])
            
    }
    
    ds_list_destroy(_lista_alvos)
            
}

desenha_choque = function()
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

#endregion
