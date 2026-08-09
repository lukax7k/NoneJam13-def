if (layer_get_visible("ui_config")) exit
    
if (global.mostra_saves)
{
    if (x != dest_x)
    {
        if (tempo_mover > 0)
        {
            tempo_mover --
        }
        else 
        {
        	tween(id, "x", dest_x, tween_animation.linear, 20)
        }
    }
    else 
    {
        tempo_mover = delay	
    }
    
}
else 
{
	if (x != origin_x)
    {
        if (tempo_mover > 0)
        {
            tempo_mover --
        }
        else 
        {
        	tween(id, "x", origin_x, tween_animation.linear, 20)
        }
    }
    else 
    {
        tempo_mover = delay	
    }
}

if (position_meeting(mouse_x, mouse_y, id))
{
    mouse_on = true
    tween(id, "xscale", 2.3, tween_animation.ease, 30)
    
    if (mouse_check_button_released(mb_left))
    {
        
        toca_sfx(snd_click, .1, 2)
        switch (opcao) 
        {
            case "Jogar":
            {
                global.mostra_saves = true
            }	
            break
        
            case "Configurações":
            {
                layer_set_visible("ui_config", 1)
                
            }	
            break
        
            case "Sair do jogo":
            {
                opcao = "Confirmar"
            }	
            break
        
            case "Confirmar":
            {
                game_end()
            }	
            break
        
            case "Voltar":
            {
                global.mostra_saves = false
                global.apagar_saves = false
            }	
            break
            
            case "Apagar":
            {
                global.apagar_saves = !global.apagar_saves
            }	
            break
            
        }
    }
    
    
}
else 
{
    mouse_on = false
    tween(id, "xscale", 2, tween_animation.ease, 30)	
    
    if (opcao == "Confirmar")
    {
        opcao = "Sair do jogo"
    }
}