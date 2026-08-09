if (delay)
{
    delay --
}
else 
{
    if (keyboard_check_released(vk_space))
    {
        room_transition(rm_mapa, tr_diagonal_right, 60)
    }	
}

if (keyboard_check_released(vk_f11))
{
    window_set_fullscreen(!window_get_fullscreen())
}