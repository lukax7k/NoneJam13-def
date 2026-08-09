if (global.salas_liberadas >= id_sala)
{
    ativo = true
}

if (ativo && meu_level == rm_level_4)
{
    if (global.level_4_descoberto)
    {
        sub = 1
    }
}

if (global.in_transition) exit
if (global.pause) exit
if (!ativo) exit

if (position_meeting(mouse_x, mouse_y, id))
    {
        xscale = lerp(xscale, esc_x_original * 1.1, .2)
        yscale = lerp(yscale, esc_y_original * 1.1, .2)
        
        if (mouse_check_button_released(mb_left))
        {
            global.game_over = false
            
            if (meu_level == rm_level_4)
            {
                if (global.level_4_completo)
                {
                    if (global.level_1a_completo and global.level_2a_completo and global.level_3a_completo)
                    {
                        room_transition(rm_cinematica_4a, tr_diagonal_right, 60)
                    }
                    else if (global.level_1b_completo and global.level_2b_completo and global.level_3b_completo)
                    {
                        room_transition(rm_cinematica_4b, tr_diagonal_right, 60)
                    }
                    else 
                    {
                    	room_transition(rm_cinematica_4, tr_diagonal_right, 60)
                    }
                }
                else 
                {
                	room_transition(meu_level, tr_diagonal_right, 60)
                }
            }
            else
            {
                room_transition(meu_level, tr_diagonal_right, 60)
            }
            
            
        }
        
    }
    else 
    {
        xscale = lerp(xscale, esc_x_original, .1)
        yscale = lerp(yscale, esc_y_original, .1)
    }