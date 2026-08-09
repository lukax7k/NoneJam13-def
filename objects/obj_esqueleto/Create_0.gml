// Inherit the parent event
event_inherited();

#region Variáveis

// atributos
vida_max = 4 + global.wave * 2
vida = vida_max
range = 80

tempo_tiro = 150
timer_tiro = 0

// movimento
meu_max_vel = random_range(1.5, 2) + global.wave / 7
max_vel = meu_max_vel

dano = 2

meu_drop = [{drop : "gold", chance : 50, n_min : 6, n_max : 12}, {drop : "bones", chance : 40, n_min : 4, n_max : 9}]

#endregion

#region Funções

toma_dano = function(_dano = 1, _tipo_dano = ["fisico"])
{
    
    toca_sfx(snd_dano_inimigo, .2, 3)
    
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
            var _dist_player = point_distance(x, y, obj_player.x, obj_player.y)
            
            if (_dist_player < range)
            {
                var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo)
                
                _meu_tiro.dano = dano
                _meu_tiro.direction = point_direction(x, y, obj_player.x, obj_player.y)
                
                timer_tiro = tempo_tiro
            }
        }
    	
    }
}

dropa_item = function()
{
    var _qtd_drop = array_length(meu_drop)
    
    for (var i = 0; i < _qtd_drop; i++) 
    {
        var _drop_atual = meu_drop[i]
        
        if (_drop_atual.drop == "gold")
        {
            var _roll = irandom_range(1, 100)
        
            if (_roll <= _drop_atual.chance + global.aumento_drop_chance_gold * 5)
            {
                var _dropou = irandom_range(_drop_atual.n_min, _drop_atual.n_max) + global.aumento_drop_gold
            
                var _moeda = variable_global_get(_drop_atual.drop)
                
                var _moeda_atualizada = _moeda + _dropou
                
                toca_sfx(snd_coin, .1, 3)
                
                variable_global_set(_drop_atual.drop, _moeda_atualizada)
            }
        }
        else 
        {
        	var _roll = irandom_range(1, 100)
        
            if (_roll <= _drop_atual.chance + global.aumento_drop_chance_bones * 5)
            {
                var _dropou = irandom_range(_drop_atual.n_min, _drop_atual.n_max) + global.aumento_drop_bones
            
                var _moeda = variable_global_get(_drop_atual.drop)
                
                var _moeda_atualizada = _moeda + _dropou
                
                toca_sfx(snd_coin, .1, 3)
                
                variable_global_set(_drop_atual.drop, _moeda_atualizada)
            }
        }
        
    }
}

#endregion

