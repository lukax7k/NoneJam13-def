#region Variaveis

// controle
dano = 1
vida = 120
num_shards = 8

vel = 5

// vel
speed = vel

#endregion

#region Funções


destruindo = function()
{
    
    if (vida > 0)
    {
        vida --
    }
    else 
    {
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
            
            
            instance_destroy()
        }
        
        
    }
    
    
    
    if (place_meeting(x, y, obj_chao))
    {
        
        instance_destroy()
        
    }
}

#endregion
