event_inherited()

#region Variaveis

// movimento
meu_max_vel = 2 + global.aumento_vel_player / 5
max_vel = meu_max_vel
meu_acel = .5
acel = .5

// atributos
vida_max = 5 + global.aumento_vida_player
vida = vida_max
vida_feedback = vida
dano = 1 + global.aumento_dano_player

// controle
up = 0
down = 0
left = 0
right = 0
atirar = 0
esquiva = 0
estado = noone
dash_dir = 0
imune = false
meu_dash_raio = noone

// timers
tempo_tiro = 30 - global.aumento_vel_tiros_player
timer_tiro = 0
tempo_dano = 120
timer_dano = 0
tempo_esquiva = 180 - global.aumento_cooldown_esquiva * 6
timer_esquiva = tempo_esquiva
duracao_esquiva = 15
timer_duracao_esquiva = duracao_esquiva
tempo_pulso_agua = 180
timer_pulso_agua = tempo_pulso_agua
tempo_cria_veneno = 3
timer_cria_veneno = tempo_cria_veneno
tempo_lento = 90
timer_lento = 0

// mapeamento
keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("D"), vk_right)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("S"), vk_down)

#endregion

#region Funções


// troca sprites
troca_sprite = function(_sprite = spr_player)
{
    if (sprite_index != _sprite)
    {
        sprite_index = _sprite; 
        
        image_index = 0;
    }
}

// tempo de invencibilidade
cooldown_dano = function()
{
    if (timer_dano > 0)
    {
        timer_dano --
    }
}

// recebe dano de inimigos
toma_dano = function(_dano = 1)
{
    
    if (global.game_over or global.pause or global.in_transition) exit
    if (timer_dano > 0 or imune) exit
    
    timer_pisca = tempo_pisca
    
    if (global.power_up_espinhos)
    {
        efeito_espinhos()
    }
    
    screenshake(15)
    
    vida -= _dano
    
    toca_sfx(snd_dano, .2, .5)
    
    timer_dano = tempo_dano
    
    if (vida <= 0)
    {
        toca_sfx(snd_player_morre, .1, 3)
        
        obj_camera.alvo = noone
        global.game_over = true
        global.player_loose = true
        instance_destroy()
    }
}

// pegando inputs 
pega_input = function()
{
    up = keyboard_check(vk_up)
    down = keyboard_check(vk_down)
    left = keyboard_check(vk_left)
    right = keyboard_check(vk_right)
    atirar = mouse_check_button(mb_left)
    esquiva = mouse_check_button(mb_right) or keyboard_check_pressed(vk_space)
}

efeito_espinhos = function()
{
    for (var i = 0; i < 6; i++) 
    {
        
        var _ang = 0
        var _diff = 360 / 6
        
        var _meu_shard = instance_create_layer(x, y, "Tiro", obj_tiro_espinho)
        _meu_shard.direction = _ang + _diff * i
                	
    }
}

// atira
atirando = function()
{
    
    
    if (timer_tiro > 0)
    {
        timer_tiro --
    }
    else 
    {
        
        if (atirar)
        {
            
            toca_sfx(snd_tiro, .2, 3)
            
            
            switch (global.power_up_qtd_tiros + global.aumento_tiros_player) 
            {
                case 1:
                {
                    var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_tiro)
            
                    _meu_tiro.dano = dano
                    _meu_tiro.direction = point_direction(x, y, mouse_x, mouse_y)
                }	
                break
            
                case 2:
                {
                    var _meu_tiro_1 = instance_create_layer(x, y, "Tiro", obj_tiro)
                    var _meu_tiro_2 = instance_create_layer(x, y, "Tiro", obj_tiro)
            
                    var _dir = point_direction(x, y, mouse_x, mouse_y)
                    
                    _meu_tiro_1.dano = dano
                    _meu_tiro_2.dano = dano
                    _meu_tiro_1.direction = _dir + 2
                    _meu_tiro_2.direction = _dir - 2
                }	
                break
            
                case 3:
                {
                    var _meu_tiro_1 = instance_create_layer(x, y, "Tiro", obj_tiro)
                    var _meu_tiro_2 = instance_create_layer(x, y, "Tiro", obj_tiro)
                    var _meu_tiro_3 = instance_create_layer(x, y, "Tiro", obj_tiro)
            
                    var _dir = point_direction(x, y, mouse_x, mouse_y)
                    
                    _meu_tiro_1.dano = dano
                    _meu_tiro_2.dano = dano
                    _meu_tiro_3.dano = dano
                    _meu_tiro_1.direction = _dir + 5
                    _meu_tiro_2.direction = _dir - 5
                    _meu_tiro_3.direction = _dir
                }	
                break
            
                
            }
            
            if (global.power_up_espelho)
            {
                switch (global.power_up_qtd_tiros + global.aumento_tiros_player) 
                {
                    case 1:
                    {
                        var _meu_tiro = instance_create_layer(x, y, "Tiro", obj_tiro)
                
                        _meu_tiro.dano = dano
                        _meu_tiro.direction = point_direction(x, y, mouse_x, mouse_y) + 180
                    }	
                    break
                
                    case 2:
                    {
                        var _meu_tiro_1 = instance_create_layer(x, y, "Tiro", obj_tiro)
                        var _meu_tiro_2 = instance_create_layer(x, y, "Tiro", obj_tiro)
                
                        var _dir = point_direction(x, y, mouse_x, mouse_y) + 180
                        
                        _meu_tiro_1.dano = dano
                        _meu_tiro_2.dano = dano
                        _meu_tiro_1.direction = _dir + 2
                        _meu_tiro_2.direction = _dir - 2
                    }	
                    break
                
                    case 3:
                    {
                        var _meu_tiro_1 = instance_create_layer(x, y, "Tiro", obj_tiro)
                        var _meu_tiro_2 = instance_create_layer(x, y, "Tiro", obj_tiro)
                        var _meu_tiro_3 = instance_create_layer(x, y, "Tiro", obj_tiro)
                
                        var _dir = point_direction(x, y, mouse_x, mouse_y) + 180
                        
                        _meu_tiro_1.dano = dano
                        _meu_tiro_2.dano = dano
                        _meu_tiro_3.dano = dano
                        _meu_tiro_1.direction = _dir + 5
                        _meu_tiro_2.direction = _dir - 5
                        _meu_tiro_3.direction = _dir
                    }	
                    break
                
                    
                }
            }
            
            
            
            timer_tiro = tempo_tiro
        }	
    }
}

esquivando = function()
{
    if (timer_esquiva < tempo_esquiva)
    {
        timer_esquiva ++
    }
    else 
    {
        if (esquiva)
        {
            
            
            dash_dir = point_direction(0, 0, (right - left), (down - up))
        
            estado = estado_esquiva
            
            timer_esquiva = 0
            
        }	
    }
}



pulso_agua = function()
{
    if (timer_pulso_agua > 0)
    {
        timer_pulso_agua --
    }
    else 
    {
        if (!instance_exists(obj_pulso_agua))
        {
            instance_create_layer(x, y, "Tiro", obj_pulso_agua)
        }
        
        
        timer_pulso_agua = tempo_pulso_agua
    }
}

cria_veneno = function()
{
    if (timer_cria_veneno > 0)
    {
        timer_cria_veneno --
    }
    else 
    {
        instance_create_layer(x, y, "Efeitos", obj_nuvem_veneno)
        timer_cria_veneno = tempo_cria_veneno	
    }
}

#endregion

#region Máquina de estados

estado_parado = function()
{
    troca_sprite(spr_player)
    
    pega_input()
    
    if (global.power_up_agua)
    {
        pulso_agua()
    }
    
    if (global.power_up_acido)
    {
        cria_veneno()
    }
    
    if (velh != 0 or velv != 0)
    {
        estado = estado_andando
    }
    
}

estado_andando = function()
{
    troca_sprite(spr_player_walk)
    
    if (global.power_up_agua)
    {
        pulso_agua()
    }
    
    if (global.power_up_acido)
    {
        cria_veneno()
    }
    
    if (velh == 0 && velv == 0)
    {
        estado = estado_parado
    }
}

estado_esquiva = function()
{
    troca_sprite(spr_player_dash)
    
    toca_sfx(snd_dash, .1, 3)
    
    var _rastro = instance_create_depth(x, y, depth + 2, obj_rastro_tiro)
    _rastro.spr = spr_player_dash
    _rastro.sub = image_number
    _rastro.xscale = abs(image_xscale) 
    _rastro.yscale = image_yscale 
    _rastro.lado = velh >= 0 ? 1 : -1
    
    if (global.power_up_dash_raio)
    {
        _rastro.image_blend = c_fuchsia
    }
    
    imune = true
    
    if (global.power_up_dash_raio)
    {
        if (!instance_exists(obj_dano_dash_raio))
        {
            meu_dash_raio = instance_create_layer(x, y, "Tiro", obj_dano_dash_raio)
        }
    }
    
    if (global.power_up_acido)
    {
        cria_veneno()
    }
       
    if (timer_duracao_esquiva > 0)
    {
        timer_duracao_esquiva --
        
        velh = lengthdir_x(max_vel * 6, dash_dir)
        velv = lengthdir_y(max_vel * 6, dash_dir)
    }
    else 
    {
        timer_duracao_esquiva = duracao_esquiva
        timer_dano = 40
        imune = false
        
        if (meu_dash_raio)
        {
            instance_destroy(meu_dash_raio)
        }
        
        estado = estado_parado	
    }
}

cria_estrela = function()
{
    if (global.power_up_estrela)
    {
        if (!instance_exists(obj_estrela))
        {
            instance_create_layer(x + 60, y, "Tiro", obj_estrela)
        }
    }
}

#endregion


estado = estado_parado