if (global.apagar_saves and opcao != "Novo jogo")
{
    spr = spr_ui_button_normal_vermelho
}
else 
{
    spr = spr_ui_button_normal	
}

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
    
    if (x != dest_x) exit
    
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
    
    if (x != origin_x) exit
}

if (global.apagar_saves)
{
    if (opcao == "Continuar")
    {
        opcao = "Excluir save"
    }
    
}
else 
{
    opcao = file_exists(string("sunnysave{0}.json", save_id)) ? "Continuar" : "Novo jogo"	
}



if (position_meeting(mouse_x, mouse_y, id))
{
    if (opcao == "Novo jogo" and global.apagar_saves) exit
    
    mouse_on = true
    tween(id, "xscale", 2.3, tween_animation.ease, 30)
    
    if (mouse_check_button_released(mb_left))
    {
        
        toca_sfx(snd_click, .1, 2)
        
        switch (opcao) 
        {
        
            case "Continuar":
            {
                global.save_atual = save_id
        
                carrega_jogo()
                
                room_transition(rm_mapa, tr_diagonal_right, 60)	
            }
            break
        
            case "Novo jogo":
            {
                if (global.apagar_saves) exit
                
                global.save_atual = save_id
        
                carrega_jogo()
                
                room_transition(rm_cinematica_0, tr_diagonal_right, 60)	
            }
            break
        
            case "Excluir save":
            {
                opcao = "Confirmar"
            }
            break
        
            case "Confirmar":
            {
                file_delete(string("sunnysave{0}.json", save_id))
                opcao = "Novo jogo"
                global.apagar_saves = false
            }
            break
        
            
            	
        }
        
        
    }
 
}
else 
{
    mouse_on = false
    tween(id, "xscale", 2, tween_animation.ease, 30)	
    
}