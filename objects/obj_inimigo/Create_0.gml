// Inherit the parent event
event_inherited();

#region Variáveis

// movimento
meu_max_vel = 2
max_vel = max_vel
alcance = 6

// controle
colisoes = [obj_chao, obj_item_colisao, obj_inimigo]
estado = noone
alvos_choque = []
array_choque = [obj_inimigo, obj_condutor]
status = "nenhum"
num_shards = 6

// timers
tempo_choque = 20
timer_choque = 0
tempo_gelo = 180
timer_gelo = 0
tempo_molhado = 180
timer_molhado = 0
duracao_veneno = 180 + global.aumento_duracao_veneno * 20
timer_duracao_veneno = 0
tempo_dano_veneno = 60
timer_dano_veneno = tempo_dano_veneno

// drops
meu_drop = [{drop : "gold", chance : 50, n_min : 2, n_max : 5}]



#endregion

#region Funções



segue_player = function()
{
    if (instance_exists(obj_player))
    {
        var _alvo = obj_player
        
        var _dir = point_direction(x, y, _alvo.x, _alvo.y)
        var _dist = point_distance(x, y, _alvo.x, _alvo.y)
        
        if (_dist > alcance)
        {
            velh = lengthdir_x(max_vel, _dir)
            velv = lengthdir_y(max_vel, _dir)
        }
        else 
        {
        	velh = 0
            velv = 0
        }
        
        
    }
}

efeito_choque = function()
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

efeito_gelo = function()
{
    timer_gelo = tempo_gelo
}

efeito_molhado = function()
{
    timer_molhado = tempo_molhado
}

efeito_soul_shard = function()
{
    if (!global.power_up_alma) exit
    
    for (var i = 0; i < num_shards; i++) 
    {
        
        var _ang = 0
        var _diff = 360 / num_shards
        
        var _meu_shard = instance_create_layer(x, y, "Tiro", obj_soul_shard)
        _meu_shard.direction = _ang + _diff * i
                	
    }
}

efeito_veneno = function()
{
    timer_duracao_veneno = duracao_veneno
}

empurra_vento = function()
{
    var _vento = instance_position(x, y, obj_vento)
    
    if (_vento != noone)
    {
        if (instance_exists(obj_player))
        {
            var _dir = point_direction(obj_player.x, obj_player.y, x, y)
            velh = lengthdir_x(max_vel * 2, _dir)
            velv = lengthdir_y(max_vel * 2, _dir)
            
        }
        
    }
}
empurra_agua = function()
{
    var _vento = instance_position(x, y, obj_pulso_agua)
    
    if (_vento != noone)
    {
        if (instance_exists(obj_player))
        {
            var _dir = point_direction(obj_player.x, obj_player.y, x, y)
            velh = lengthdir_x(max_vel * 3, _dir)
            velv = lengthdir_y(max_vel * 3, _dir)
            
        }
        
    }
}


dropa_item = function()
{
    var _qtd_drop = array_length(meu_drop)
    
    for (var i = 0; i < _qtd_drop; i++) 
    {
        var _drop_atual = meu_drop[i]
        
        var _roll = irandom_range(1, 100)
        
        if (_roll <= _drop_atual.chance)
        {
            var _dropou = irandom_range(_drop_atual.n_min, _drop_atual.n_max)
        
            var _moeda = variable_global_get(_drop_atual.drop)
            
            var _moeda_atualizada = _moeda + _dropou
            
            variable_global_set(_drop_atual.drop, _moeda_atualizada)
        }	
    }
}

#endregion

#region Máquina de estados

estado_seguindo = function()
{
    segue_player()
}

#endregion

estado = estado_seguindo
