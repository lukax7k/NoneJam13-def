if (global.in_transition) exit
    
if (meu_alpha < 1)
{
    meu_alpha = lerp(meu_alpha, 1, .05)
}

if (y_original < y)
{
    y_original += .5
}

if (opcao == "Fullscreen: off")
{
    if (window_get_fullscreen())
    {
        opcao = "Fullscreen: on"
    }
}
if (opcao == "Fullscreen: on")
{
    if (!window_get_fullscreen())
    {
        opcao = "Fullscreen: off"
    }
}


if (position_meeting(mouse_x, mouse_y, id))
{
    xscale = lerp(xscale, esc_x_original * 1.1, .2)
    yscale = lerp(yscale, esc_y_original * 1.1, .2)
    
    mouse_on = true
    
    
    if (mouse_check_button_released(mb_left))
    {
        switch (opcao) 
        {
            
            case "Continuar":
            {
                if (global.game_over)
                {
                    if (global.player_win)
                    {
                        if (room == rm_level_1)
                        {
                            if (!global.level_1_completo)
                            {
                                reseta_powerups()
                                room_transition(rm_cinematica_1, tr_diagonal_right, 60)
                                global.game_over = false
                                global.player_loose = false
                                global.player_win = false
                            }
                            else 
                            {
                                if (global.level_1a)
                                {
                                    if (!global.level_1a_completo)
                                    {
                                        if (global.chefe_1_derrotado)
                                        {
                                            reseta_powerups()
                                            room_transition(rm_cinematica_1a_completo, tr_diagonal_right, 60)
                                            global.game_over = false
                                            global.player_loose = false
                                            global.player_win = false
                                        }
                                    }
                                }
                                else if (global.level_1b)
                                {
                                    if (!global.level_1b_completo)
                                    {
                                        if (global.chefe_1_derrotado)
                                        {
                                            reseta_powerups()
                                            room_transition(rm_cinematica_1b_completo, tr_diagonal_right, 60)
                                            global.game_over = false
                                            global.player_loose = false
                                            global.player_win = false
                                        }
                                    }
                                    
                                    if (!global.in_transition)
                                    {
                                        reseta_powerups()
                                        room_transition(rm_mapa, tr_diagonal_right, 60)
                                        global.game_over = false
                                        global.player_loose = false
                                        global.player_win = false
                                    }
                                }
                                
                            	reseta_powerups()
                                room_transition(rm_mapa, tr_diagonal_right, 60)
                                global.game_over = false
                                global.player_loose = false
                                global.player_win = false
                            }
                        }
                        else if (room == rm_level_2)
                        {
                            if (!global.level_2_completo)
                            {
                                reseta_powerups()
                                room_transition(rm_cinematica_2, tr_diagonal_right, 60)
                                global.game_over = false
                                global.player_loose = false
                                global.player_win = false
                            }
                            else 
                            {
                            	if (global.level_2a)
                                {
                                    if (!global.level_2a_completo)
                                    {
                                        if (global.chefe_2_derrotado)
                                        {
                                            reseta_powerups()
                                            room_transition(rm_cinematica_2a_completo, tr_diagonal_right, 60)
                                            global.game_over = false
                                            global.player_loose = false
                                            global.player_win = false
                                        }
                                    }
                                }
                                else if (global.level_2b)
                                {
                                    if (!global.level_2b_completo)
                                    {
                                        if (global.chefe_2_derrotado)
                                        {
                                            reseta_powerups()
                                            room_transition(rm_cinematica_2b_completo, tr_diagonal_right, 60)
                                            global.game_over = false
                                            global.player_loose = false
                                            global.player_win = false
                                        }
                                    }
                                    
                                    if (!global.in_transition)
                                    {
                                        reseta_powerups()
                                        room_transition(rm_mapa, tr_diagonal_right, 60)
                                        global.game_over = false
                                        global.player_loose = false
                                        global.player_win = false
                                    }
                                }
                                
                            	reseta_powerups()
                                room_transition(rm_mapa, tr_diagonal_right, 60)
                                global.game_over = false
                                global.player_loose = false
                                global.player_win = false
                            }
                        }
                        else if (room == rm_level_3)
                        {
                            if (!global.level_3_completo)
                            {
                                reseta_powerups()
                                room_transition(rm_cinematica_3, tr_diagonal_right, 60)
                                global.game_over = false
                                global.player_loose = false
                                global.player_win = false
                            }
                            else 
                            {
                            	if (global.level_3a)
                                {
                                    if (!global.level_3a_completo)
                                    {
                                        if (global.chefe_3_derrotado)
                                        {
                                            reseta_powerups()
                                            room_transition(rm_cinematica_3a_completo, tr_diagonal_right, 60)
                                            global.game_over = false
                                            global.player_loose = false
                                            global.player_win = false
                                        }
                                    }
                                }
                                else if (global.level_3b)
                                {
                                    if (!global.level_3b_completo)
                                    {
                                        if (global.chefe_3_derrotado)
                                        {
                                            reseta_powerups()
                                            room_transition(rm_cinematica_3b_completo, tr_diagonal_right, 60)
                                            global.game_over = false
                                            global.player_loose = false
                                            global.player_win = false
                                        }
                                    }
                                    
                                    if (!global.in_transition)
                                    {
                                        reseta_powerups()
                                        room_transition(rm_mapa, tr_diagonal_right, 60)
                                        global.game_over = false
                                        global.player_loose = false
                                        global.player_win = false
                                    }
                                }
                                
                            	reseta_powerups()
                                room_transition(rm_mapa, tr_diagonal_right, 60)
                                global.game_over = false
                                global.player_loose = false
                                global.player_win = false
                            }
                        }
                        else if (room == rm_level_4)
                        {
                            if (!global.level_4_completo)
                            {
                                reseta_powerups()
                                
                                if (global.level_1a_completo and global.level_2a_completo and global.level_3a_completo)
                                {
                                    room_transition(rm_cinematica_4a, tr_diagonal_right, 60)
                                    global.game_over = false
                                    global.player_loose = false
                                    global.player_win = false
                                }
                                else if (global.level_1b_completo and global.level_2b_completo and global.level_3b_completo)
                                {
                                    room_transition(rm_cinematica_4b, tr_diagonal_right, 60)
                                    global.game_over = false
                                    global.player_loose = false
                                    global.player_win = false
                                }
                                else 
                                {
                                	room_transition(rm_cinematica_4, tr_diagonal_right, 60)
                                    global.game_over = false
                                    global.player_loose = false
                                    global.player_win = false
                                }
                                
                            }
                            else 
                            {
                            	reseta_powerups()
                                
                                if (global.player_win)
                                {
                                    if (global.level_1a_completo and global.level_2a_completo and global.level_3a_completo)
                                    {
                                        room_transition(rm_cinematica_final_a, tr_diagonal_right, 60)
                                        global.game_over = false
                                        global.player_loose = false
                                        global.player_win = false
                                    }
                                    else if (global.level_1b_completo and global.level_2b_completo and global.level_3b_completo)
                                    {
                                        room_transition(rm_cinematica_final_b, tr_diagonal_right, 60)
                                        global.game_over = false
                                        global.player_loose = false
                                        global.player_win = false
                                    }
                                    else 
                                    {
                                    	room_transition(rm_cinematica_final, tr_diagonal_right, 60)
                                        global.game_over = false
                                        global.player_loose = false
                                        global.player_win = false
                                    }
                                }
                                else 
                                {
                                	room_transition(rm_mapa, tr_diagonal_right, 60)
                                    global.game_over = false
                                    global.player_loose = false
                                    global.player_win = false
                                }
                                
                                
                            }
                        }
                    }
                    else 
                    {
                    	reseta_powerups()
                        room_transition(rm_mapa, tr_diagonal_right, 60)
                        global.game_over = false
                        global.player_loose = false
                        global.player_win = false
                    }
                    
                }
                else 
                {
                	layer_set_visible("ui_pause", 0)
                    global.pause = false
                }
                
            }
            break
        
            case "Configurações":
            {
                layer_set_visible("ui_pause", 0)
                layer_set_visible("ui_config", 1)
            }
            break
        
            case "Sair da fase":
            {
                opcao = "Confirmar"
            }
            break
        
            case "Salvar e sair":
            {
                opcao = "Confirmar"
            }
            break
        
            case "Confirmar":
            {
                if (room = rm_mapa or room == rm_skilltree)
                {
                    
                    salvar_jogo()
                    
                    room_transition(rm_menu, tr_diagonal_right, 60)
                }
                else 
                {
                    room_transition(rm_mapa, tr_diagonal_right, 60)
                }
                
            }
            break
        
            case "Fullscreen: off":
            {
                window_set_fullscreen(1)
                opcao = "Fullscreen: on"
            }
            break
        
            case "Fullscreen: on":
            {
                window_set_fullscreen(0)
                opcao = "Fullscreen: off"
            }
            break
                
            case "Voltar":
            {
                if (global.pause)
                {
                    layer_set_visible("ui_pause", 1)
                }
                
                layer_set_visible("ui_config", 0)
                
            }
            break
                
            
        }
    }
    
}
else 
{
    xscale = lerp(xscale, esc_x_original, .1)
    yscale = lerp(yscale, esc_y_original, .1)
    
    mouse_on = false
}