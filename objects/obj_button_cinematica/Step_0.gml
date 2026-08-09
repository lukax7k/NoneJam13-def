if (global.in_transition) exit

image_yscale = lerp(image_yscale, 1, .1)

switch (room) 
{
    case rm_cinematica_1:
    {
        if (opcao == 0)
        {
            texto = "Devolver"
        }
        else if (opcao == 1)
        {
            texto = "Pegar"
        }
    }	
    break
    case rm_cinematica_2:
    {
        if (opcao == 0)
        {
            texto = "Ajudar"
        }
        else if (opcao == 1)
        {
            texto = "Ignorar"
        }
    }	
    break
    case rm_cinematica_3:
    {
        if (opcao == 0)
        {
            texto = "Acalmar"
        }
        else if (opcao == 1)
        {
            texto = "Chutar"
        }
    }	
    break
}

if (position_meeting(mouse_x, mouse_y, id))
{
    if (mouse_check_button_released(mb_left))
    {
        if (opcao == 0)
        {
            if (room == rm_cinematica_1)
            {
                room_transition(rm_cinematica_1a, tr_diagonal_right, 60)
            }
            else if (room == rm_cinematica_2)
            {
                room_transition(rm_cinematica_2a, tr_diagonal_right, 60)
            }
            else if (room == rm_cinematica_3)
            {
                room_transition(rm_cinematica_3a, tr_diagonal_right, 60)
            }
            
        }
        else if (opcao == 1)
        {
            if (room == rm_cinematica_1)
            {
                room_transition(rm_cinematica_1b, tr_diagonal_right, 60)
            }
            else if (room == rm_cinematica_2)
            {
                room_transition(rm_cinematica_2b, tr_diagonal_right, 60)
            }
            else if (room == rm_cinematica_3)
            {
                room_transition(rm_cinematica_3b, tr_diagonal_right, 60)
            }
        }
    }
}