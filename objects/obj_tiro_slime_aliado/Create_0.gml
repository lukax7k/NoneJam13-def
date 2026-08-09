#region Variaveis

// controle
dano = 3
vida = 240

// vel
speed = 5

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
    
    if (place_meeting(x, y, obj_anjo))
    {
        var _meu_inimigo = instance_position(x, y, obj_anjo)
        
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
