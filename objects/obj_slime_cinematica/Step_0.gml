if (global.in_transition) exit
if (instance_exists(obj_player_cinematica))
{
    
    if (obj_player_cinematica.text_index > 0)
    {
        if (keyboard_check_pressed(vk_space))
        {
            x = 176
        }
    }
    
    if (obj_player_cinematica.text_index > 90)
    {
        mover = true
    }
    
}

if (mover)
{
    if (x > 176)
    {
        x -= .5
    }
    
}