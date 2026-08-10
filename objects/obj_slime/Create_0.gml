// Inherit the parent event
event_inherited();

#region Variáveis

// atributos
vida_max = 2 + global.wave
vida = vida_max

minha_poca = obj_poca_slime

// movimento
meu_max_vel = random_range(1., 1.3) + global.wave / 7
max_vel = meu_max_vel
dano = 1

// drops
meu_drop = [{drop : "gold", chance : 50, n_min : 5, n_max : 12}, {drop : "slime", chance : 40, n_min : 3, n_max : 8}]

#endregion

#region Funções

toma_dano = function(_dano = 1, _tipo_dano = ["fisico"])
{
    timer_pisca = tempo_pisca
    
    toca_sfx(snd_dano_inimigo, .2, 4)
    
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
    
    vida -= _dano
    
    var _mostra_dano = instance_create_layer(x, y, "Dano", obj_mostra_dano)
    _mostra_dano.valor = _dano
    
    if (vida <= 0)
    {
        var _minha_poca = instance_create_layer(x, y, "Chao", minha_poca)
        
        if (array_contains(_tipo_dano, "fogo"))
        {
            _minha_poca.pega_fogo()
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
        
            if (_roll <= _drop_atual.chance + global.aumento_drop_chance_slime * 5)
            {
                var _dropou = irandom_range(_drop_atual.n_min, _drop_atual.n_max) + global.aumento_drop_slime
            
                var _moeda = variable_global_get(_drop_atual.drop)
                
                var _moeda_atualizada = _moeda + _dropou
                
                toca_sfx(snd_coin, .1, 3)
                
                variable_global_set(_drop_atual.drop, _moeda_atualizada)
            }
        }
        
    }
}

#endregion

