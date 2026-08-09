#region Variaveis

// controle
dano = 1 + global.aumento_dano_eco
vida = 60

// vel
speed = 7

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
    
    if (place_meeting(x, y, obj_inimigo))
    {
        var _meu_inimigo = instance_position(x, y, obj_inimigo)
        
        
        if (_meu_inimigo)
        {
            var _tipo_dano = ["fisico"]
            
            _meu_inimigo.toma_dano(dano, _tipo_dano)
            
            instance_destroy()
        }
        
        
    }
    
    if (place_meeting(x, y, obj_barril))
    {
        var _barril = instance_position(x, y, obj_barril)
        
        if (_barril)
        {
            var _tipo_dano = ["fisico"]
            
            _barril.toma_dano(dano, _tipo_dano)
            
            instance_destroy()
        }
    }
    
    if (place_meeting(x, y, obj_condutor))
    {
        var _obj = instance_position(x, y, obj_condutor)
        
        if (_obj)
        {
            var _tipo_dano = ["fisico"]
            
            _obj.toma_dano(dano, _tipo_dano)
            
            instance_destroy()
        }
    }
    
    if (place_meeting(x, y, obj_hidrante))
    {
        var _obj = instance_position(x, y, obj_hidrante)
        
        if (_obj)
        {
            var _tipo_dano = ["fisico"]
            
            _obj.toma_dano(dano, _tipo_dano)
            
            instance_destroy()
        }
    }
    
    if (place_meeting(x, y, obj_condutor))
    {
        var _obj = instance_position(x, y, obj_condutor)
        
        if (_obj)
        {
            var _tipo_dano = ["fisico"]
            
            _obj.toma_dano(dano, _tipo_dano)
            
            instance_destroy()
        }
    }
    
    if (place_meeting(x, y, obj_hidrante))
    {
        var _obj = instance_position(x, y, obj_hidrante)
        
        if (_obj)
        {
            var _tipo_dano = ["fisico"]
            
            _obj.toma_dano(dano, _tipo_dano)
            
            instance_destroy()
        }
    }
    
    
    if (place_meeting(x, y, obj_chao))
    {
        instance_destroy()
    }
}

#endregion
