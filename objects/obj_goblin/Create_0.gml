// Inherit the parent event
event_inherited();

#region Variáveis

// atributos
vida_max = 12 + global.wave * 3
vida = vida_max
range = 30
dano = 3

// movimento
meu_max_vel = random_range(1.8, 2.2) + global.wave / 7
max_vel = meu_max_vel

meu_drop = [{drop : "gold", chance : 50, n_min : 10, n_max : 17}, {drop : "claw", chance : 40, n_min : 7, n_max : 12}]

#endregion

#region Funções

calcula_range = function()
{
    if (instance_exists(obj_player))
    {
        var _dist = point_distance(x, y, obj_player.x, obj_player.y)
        
        if (_dist <= range) 
        {
            explodir()
        }
    }
}

explodir = function()
{
    var _minha_bomba = instance_create_layer(x, y, "Tiro", obj_dano_explosao)
    _minha_bomba.dano = dano
    
    efeito_soul_shard()
    instance_destroy()
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
        
        if (array_contains(_tipo_dano, "fogo") or array_contains(_tipo_dano, "raio"))
        {
            explodir()
        }
        
        dropa_item()
        efeito_soul_shard()
        instance_destroy()
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
        
            if (_roll <= _drop_atual.chance + global.aumento_drop_chance_claws * 5)
            {
                var _dropou = irandom_range(_drop_atual.n_min, _drop_atual.n_max) + global.aumento_drop_claws
            
                var _moeda = variable_global_get(_drop_atual.drop)
                
                var _moeda_atualizada = _moeda + _dropou
                
                toca_sfx(snd_coin, .1, 3)
                
                variable_global_set(_drop_atual.drop, _moeda_atualizada)
            }
        }
        
    }
}

#endregion
