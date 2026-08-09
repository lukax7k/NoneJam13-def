if (global.pause or global.tela_power_up or global.in_transition) exit

timer_invoca -= .2

var _alpha = sin(timer_invoca)

image_alpha = _alpha

if (timer_invoca <= 0)
{
    if (meu_monstro)
    {
        if (!place_meeting(x, y, obj_inimigo))
        {
            instance_create_layer(x, y, layer, meu_monstro)
            instance_destroy()
        }
        else 
        {
            timer_invoca = 2	
        }
        
    }
    
    
}