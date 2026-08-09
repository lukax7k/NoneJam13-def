randomise()

layer_set_visible("ui_runas", 0)

#region Variaveis

tempo_invoca_monstro = 240
timer_invoca_monstro = 0

tempo_invoca_item = 240
timer_invoca_item = 0

monstros_por_spawn = 2
itens_por_spawn = 3


tempo_wave = game_get_speed(gamespeed_fps) * 25
timer_wave = tempo_wave

invoquei_boss = false

final_wave = 6

global.wave = 1

// barra de vida: 
lifebar_w = 200
energy_bar_w = 150
lifebar_h = 30

color_red = make_colour_rgb(255, 0, 64)
color_green = make_colour_rgb(90, 205, 140)
color_blue = make_colour_rgb(90, 150, 220)
color_2 = make_colour_rgb(19, 19, 19)
color_3 = make_colour_rgb(19, 19, 19)
color_4 = c_white

txt_timer = 0

#endregion

#region Funções

if (room == rm_level_4)
{
    if (!global.level_4_descoberto)
    {
        global.level_4_descoberto = true
    }
}

reseta_run = function()
{
    global.powerups_disponiveis = []
    array_copy(global.powerups_disponiveis, 0, global.power_up_list, 0, array_length(global.power_up_list))
    reseta_powerups()
    global.wave = 1
}


invoca_monstro = function()
{
    
    var _marg = 32
            
    var _x = irandom_range(_marg, room_width - _marg)
    var _y = irandom_range(_marg, room_height - _marg)
    
    if (!invoquei_boss)
    {
        switch (room) 
        {
            case rm_level_1:
            {
            
                if (global.level_1a)
                {
                    if (!instance_exists(obj_slime_rei))
                    {
                        instance_create_layer(640, 96, "Inimigos", obj_slime_rei)
                        invoquei_boss = true
                    }
                }
                else if (global.level_1b)
                {
                    if (!instance_exists(obj_slime_anarquico))
                    {
                        instance_create_layer(640, 96, "Inimigos", obj_slime_anarquico)
                        invoquei_boss = true
                    }
                }
                
                   
            }	
            break
            case rm_level_2:
            {
            
                if (global.level_2a)
                {
                    if (!instance_exists(obj_exqueleto))
                    {
                        instance_create_layer(640, 96, "Inimigos", obj_exqueleto)
                        invoquei_boss = true
                    }
                }
                else if (global.level_2b)
                {
                    if (!instance_exists(obj_maquina))
                    {
                        instance_create_layer(640, 96, "Inimigos", obj_maquina)
                        invoquei_boss = true
                    }
                }
                
                   
            }	
            break
        
            case rm_level_3:
            {
            
                if (global.level_3a)
                {
                    if (!instance_exists(obj_goblin_honrado))
                    {
                        instance_create_layer(640, 96, "Inimigos", obj_goblin_honrado)
                        invoquei_boss = true
                    }
                }
                else if (global.level_3b)
                {
                    if (!instance_exists(obj_goblin_louco))
                    {
                        instance_create_layer(640, 96, "Inimigos", obj_goblin_louco)
                        invoquei_boss = true
                    }
                }
                
                   
            }	
            break
        
            case rm_level_4:
            {
            
                if (global.level_4_completo)
                {
                 
                    if (global.level_4a)
                    {
                        if (!invoquei_boss)
                        {
                            instance_create_layer(640, 96, "Inimigos", obj_anjo)
                            
                            instance_create_layer(352, 96, "Inimigos", obj_slime_rei_aliado)
                            instance_create_layer(640, 512, "Inimigos", obj_exqueleto_aliado)
                            instance_create_layer(896, 96, "Inimigos", obj_goblin_aliado)
                            
                            invoquei_boss = true
                        }
                    }
                    else if (global.level_4b)
                    {
                        if (!invoquei_boss)
                        {
                            instance_create_layer(640, 96, "Inimigos", obj_anarquico_sombra)
                            instance_create_layer(352, 512, "Inimigos", obj_maquina_sombra)
                            instance_create_layer(896, 512, "Inimigos", obj_goblin_louco_sombra)
                            invoquei_boss = true
                        }
                    }
                    else 
                    {
                    	if (!invoquei_boss)
                        {
                            instance_create_layer(640, 96, "Inimigos", obj_player_sombra)
                            
                            invoquei_boss = true
                        }
                        
                    }
                       
                }
                
                
                   
            }	
            break
        }
    }
    
    
    
    if (timer_invoca_monstro > 0)
    {
        timer_invoca_monstro --
    }
    else 
    {
        var _qtd_monstro = 	monstros_por_spawn + irandom_range(1, 2) * global.wave
        
        for (var i = 0; i < _qtd_monstro; i++) 
        {
            _marg = 32
            
            _x = irandom_range(_marg, room_width - _marg)
            _y = irandom_range(_marg, room_height - _marg)
            
            var _spawn = instance_create_layer(_x, _y, "Inimigos", obj_spawn)
            
            var _meu_monstro = noone
            
            switch (room) 
            {
                case rm_level_1:
                {
                   _meu_monstro = obj_slime 
                }	
                break
            
                case rm_level_2:
                {
                   _meu_monstro = obj_esqueleto
                }	
                break
            
                case rm_level_3:
                {
                   _meu_monstro = obj_goblin 
                }	
                break
            
                case rm_level_4:
                {
                    _meu_monstro = choose(obj_slime_sombra, obj_esqueleto_sombra, obj_goblin_sombra)
                }
                break
            }
            
            _spawn.meu_monstro = _meu_monstro
        }
        
        timer_invoca_monstro = tempo_invoca_monstro
    
    }
}

invoca_item = function()
{
    if (timer_invoca_item > 0)
    {
        timer_invoca_item --
    }
    else 
    {
        var _qtd_item = 	itens_por_spawn + global.wave
        
        for (var i = 0; i < _qtd_item; i++) 
        {
            
            var _x = irandom_range(0, room_width)
            var _y = irandom_range(0, room_height)
            
            var _spawn = instance_create_layer(_x, _y, "Objetos", obj_spawn_itens)
            _spawn.meu_item = obj_barril
        }
        
        timer_invoca_item = tempo_invoca_item
    
    }
}

controla_level = function()
{
    txt_timer = ceil(timer_wave/60)
    
    if (room == rm_level_4)
    {
        if (global.level_4_completo)
        {
            if (global.wave >= final_wave)
            {
                txt_timer = "Derrote a sombra"
            }
        }
    }
    
    
    if (global.game_over)
    {
        layer_set_visible("ui_morte", 1)
        
        if (global.player_win)
        {
            if (room == rm_level_1)
            {
                if (global.salas_liberadas < 1)
                {
                    global.salas_liberadas = 1
                }
            }
            if (room == rm_level_2)
            {
                if (global.salas_liberadas < 2)
                {
                    global.salas_liberadas = 2
                }
            }
            if (room == rm_level_3)
            {
                if (global.salas_liberadas < 3)
                {
                    global.salas_liberadas = 3
                }
            }
        }
        
    }
    
    if (global.game_over) exit
    
    
    invoca_monstro()
    //invoca_item()
    
    if (timer_wave > 0)
    {
        if (room == rm_level_4)
        {
            if (global.level_4_completo)
            {
                if (global.wave >= final_wave)
                {
                    timer_wave = 10
                }
                else 
                {
                    timer_wave --	
                }
                
            }
            else 
            {
                timer_wave --
            }
        }
        else 
        {
            timer_wave --
        }
        
    }
    else 
    {
        
        if (global.wave < final_wave)
        {
            // gerando runas
            var _list_possiveis = []
            
            array_copy(_list_possiveis, 0, global.powerups_disponiveis, 0, array_length(global.powerups_disponiveis))
            
            var _num = irandom_range(0, array_length(_list_possiveis) -1)
            global.runa_1 = _list_possiveis[_num]
            array_delete(_list_possiveis, _num, 1)
            
            _num = irandom_range(0, array_length(_list_possiveis) -1)
            global.runa_2 = _list_possiveis[_num]
            array_delete(_list_possiveis, _num, 1)
            
            _num = irandom_range(0, array_length(_list_possiveis) -1)
            global.runa_3 = _list_possiveis[_num]
            array_delete(_list_possiveis, _num, 1)
            
            
            layer_set_visible("ui_runas", 1)
            global.tela_power_up = true	
        }
        else 
        {
            
            if (room == rm_level_4)
            {
                if (global.level_4_completo)
                {
                    timer_wave = 10
                }
                else 
                {
                	global.game_over = true
                    global.player_win = true
                }
            }
            else 
            {
            	global.game_over = true
                global.player_win = true
            }
            
            	
        }
        
        
        
    }
    

}

nova_wave = function()
{
    
    global.wave ++
    
    if (instance_exists(obj_runa))
    {
        obj_runa.trava = true
        obj_runa.yscale = 0
        obj_runa.tempo_delay = irandom_range(5, 20)
    }
    
    layer_set_visible("ui_runas", 0)
    
    global.tela_power_up = false
    
    timer_wave = tempo_wave
}

#endregion

reseta_run()