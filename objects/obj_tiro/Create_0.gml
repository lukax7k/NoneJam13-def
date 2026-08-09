#region Variaveis

// controle
dano = 1
vida = 120
num_shards = 8
ricochete = global.power_up_ricochete

if (global.power_up_tamanho)
{
    image_xscale = 2
    image_yscale = 2
}


// vel
speed = 7

#endregion

#region Funções

// power up de raio
efeito_choque = function(_foco)
{
    if (_foco)
    {
        with (_foco) 
        {
        
            var _raio = instance_create_layer(x, y, "Efeitos", obj_efeito_raio)
            _raio.pai = id
        }
        
        
    }
}

// power up de fogo
efeito_fogo = function()
{
    // crio um objeto de dano de fogo, causando o dano de tipo fogo
    
    instance_create_layer(x, y, "Tiro", obj_dano_player)
    
}

efeito_vento = function()
{
    instance_create_layer(x, y, "Tiro", obj_vento)
}

// power up de shards
efeito_shard = function()
{
    for (var i = 0; i < num_shards; i++) 
    {
        
        var _ang = 0
        var _diff = 360 / num_shards
        
        var _meu_shard = instance_create_layer(x, y, "Tiro", obj_tiro_shard)
        _meu_shard.direction = _ang + _diff * i
                	
    }
}

efeito_ricochete = function()
{
    if (ricochete <= 0)
    {
        if (global.power_up_shard)
        {
            efeito_shard()
        }
        
        instance_destroy()
    }
    
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
    
    vida = 120
    
    dano = ceil(dano + dano * .5)
    
    ricochete --
    
}

efeito_gelo = function()
{
    instance_create_layer(x, y, "Tiro", obj_dano_gelo)
}

destruindo = function()
{
    
    if (vida > 0)
    {
        vida --
    }
    else 
    {
        if (global.power_up_shard)
        {
            efeito_shard()
        }
        
        instance_destroy()	
    }
    
    if (place_meeting(x, y, obj_inimigo))
    {
        var _meu_inimigo = instance_position(x, y, obj_inimigo)
        
        
        if (_meu_inimigo)
        {
            var _tipo_dano = []
            
            
            if (global.power_up_gelo)
            {
                efeito_gelo()
            }
            
            if (global.power_up_vendaval)
            {
                efeito_vento()
            }
            
            if (global.power_up_fogo)
            {
                array_push(_tipo_dano, "fogo")
                
                efeito_fogo()
            }
            
            if (global.power_up_raio)
            {
                
                array_push(_tipo_dano, "raio")
                
                efeito_choque(_meu_inimigo)
            }
            
            
            if (global.power_up_shard)
            {
                efeito_shard()
            }
            
            if (instance_exists(_meu_inimigo))
            {
                _meu_inimigo.toma_dano(dano, _tipo_dano)
            }
            
            
            instance_destroy()
        }
        
        
    }
    
    if (place_meeting(x, y, obj_barril))
    {
        var _barril = instance_position(x, y, obj_barril)
        
        if (_barril)
        {
            var _tipo_dano = []
            
            
            if (global.power_up_fogo)
            {
                array_push(_tipo_dano, "fogo")
                
                efeito_fogo()
            }
            
            _barril.toma_dano(dano, _tipo_dano)
            
            if (global.power_up_ricochete)
            {
                efeito_ricochete()
            }
            else 
            {
                if (global.power_up_shard)
                {
                    efeito_shard()
                }
                
            	instance_destroy()
            }
            
        }
    }
    
    if (place_meeting(x, y, obj_condutor))
    {
        var _condutor = instance_position(x, y, obj_condutor)
        
        if (_condutor)
        {
            var _tipo_dano = []
            
            
            if (global.power_up_raio)
            {
                array_push(_tipo_dano, "raio")
            }
            
            if (global.power_up_fogo)
            {
                
                efeito_fogo()
            }
            
            _condutor.toma_dano(dano, _tipo_dano)
            
            if (global.power_up_ricochete)
            {
                efeito_ricochete()
            }
            else 
            {
                if (global.power_up_shard)
                {
                    efeito_shard()
                }
                
            	instance_destroy()
            }
            
        }
    }
    
    if (place_meeting(x, y, obj_hidrante))
    {
        var _objeto = instance_position(x, y, obj_hidrante)
        
        if (_objeto)
        {
            var _tipo_dano = []
            
            
            if (global.power_up_raio)
            {
                array_push(_tipo_dano, "raio")
            }
            
            if (global.power_up_fogo)
            {
               
                efeito_fogo()
            }
            
            _objeto.toma_dano(dano, _tipo_dano)
            
            if (global.power_up_ricochete)
            {
                efeito_ricochete()
            }
            else 
            {
                if (global.power_up_shard)
                {
                    efeito_shard()
                }
                
            	instance_destroy()
            }
            
        }
    }
    
    
    if (place_meeting(x, y, obj_chao))
    {
        
        if (global.power_up_ricochete)
        {
            efeito_ricochete()
        }
        else 
        {
            if (global.power_up_shard)
            {
                efeito_shard()
            }
            
            instance_destroy()
        }
    }
}

#endregion
