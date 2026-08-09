#region Variaveis

// controle
dano = 1
vida = 720
num_shards = 8

tempo_volta = 120


// vel
speed = 5

#endregion

#region Funções


destruindo = function()
{
    
    if (tempo_volta > 0)
    {
        tempo_volta --
    }
    else 
    {
        speed = 2
        direction = lerp(direction, direction + 320, .5)
    }
    
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
        
        var _dir = direction
    
        if (place_meeting(x, y + vspeed, obj_chao)) 
        {
            direction = -_dir;
        }
        
        y += lengthdir_y(speed, direction);
        
        if (place_meeting(x + hspeed, y, obj_chao)) 
        {
            direction = 180 - _dir;
        }
        
        x += lengthdir_x(speed, direction);
        
    }
}

#endregion
