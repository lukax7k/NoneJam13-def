#region Variáveis

// controle
minha_runa = noone
delay_click = 60

// efeitos
esc_x_original = image_xscale
esc_y_original = image_yscale
xscale = esc_x_original
yscale = 0

trava = true
tempo_delay = irandom_range(5, 20)

#endregion


#region Funções

escolhe_runa = function()
{
    
    if (delay_click > 0) delay_click --

    if (position_meeting(mouse_x, mouse_y, id))
    {
        xscale = lerp(xscale, esc_x_original * 1.1, .2)
        yscale = lerp(yscale, esc_y_original * 1.1, .2)
        
        if (mouse_check_button_released(mb_left) && !delay_click)
        {
            
            variable_global_set(minha_runa.variavel, true)
            
            array_push(global.power_ups_atuais, minha_runa)
            
            var _num = array_get_index(global.powerups_disponiveis, minha_runa) 
            
            array_delete(global.powerups_disponiveis, _num, 1)
            
            toca_sfx(snd_pega_runa, .2, 1)
            
            if (instance_exists(obj_jogo))
            {
                with (obj_jogo) 
                {
                    nova_wave()	
                }
            }
        }
    }
    else 
    {
        xscale = lerp(xscale, esc_x_original, .1)
        yscale = lerp(yscale, esc_y_original, .1)
    }
}

#endregion