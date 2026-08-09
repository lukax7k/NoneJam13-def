#region Variaveis

// controle
dano = 1
vida = 90
num_shards = 8


// vel
speed = 5

#endregion

#region Funções


explodindo = function()
{
    for (var i = 0; i < 6; i++) 
    {
        
        var _ang = 0
        var _diff = 360 / 6
        
        var _meu_shard = instance_create_layer(x, y, "Tiro", obj_tiro_inimigo)
        _meu_shard.direction = _ang + _diff * i
                	
    }
    
    var _explosao = instance_create_layer(x, y, "Efeitos", obj_dano_explosao)
    _explosao.tamanho = 8
}

destruindo = function()
{
    
    if (vida > 0)
    {
        vida --
    }
    else 
    {
        explodindo()
        instance_destroy()	
    }
    
    if (place_meeting(x, y, obj_player))
    {
        var _meu_inimigo = instance_position(x, y, obj_player)
        
        if (_meu_inimigo)
        {
           
            if (instance_exists(_meu_inimigo))
            {
                _meu_inimigo.toma_dano(dano)
            }
            
            explodindo()
            instance_destroy()
        }
        
        
    }
    
    
    
    if (place_meeting(x, y, obj_chao))
    {
        explodindo()
        instance_destroy()
        
    }
}

#endregion
