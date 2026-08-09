if (global.pause or global.tela_power_up or global.in_transition) exit

timer_invoca -= .2

if (image_xscale < 1.2)
{
    image_xscale += .003
    image_yscale = image_xscale
}


if (timer_invoca <= 0)
{
    
    if (meu_item != noone)
    {
        if (!place_meeting(x, y, obj_entidade))
        {
            instance_create_layer(x, y - 4, layer, meu_item)
            
            instance_destroy()
        }
        else 
        {
            timer_invoca = 10	
        }
        
    }
    
    
    
}