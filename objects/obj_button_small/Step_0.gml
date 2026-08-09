
if (global.in_transition) exit
    
if (meu_alpha < 1)
{
    meu_alpha = lerp(meu_alpha, 1, .05)
}

if (y_original < y)
{
    y_original += .5
}

if (position_meeting(mouse_x, mouse_y, id))
{
    xscale = lerp(xscale, esc_x_original * 1.1, .2)
    yscale = lerp(yscale, esc_y_original * 1.1, .2)
    
    mouse_on = true
    
    
    if (mouse_check_button_released(mb_left))
    {
        switch (tipo) 
        {
            case "musica":
            {
                if (valor == 1)
                {
                    if (global.musica < 1)
                    {
                        global.musica += .1
                    }
                }
                else 
                {
                    if (global.musica > 0)
                    {
                        global.musica -= .1
                    }	
                }
            }	
            break
        
            case "sons":
            {
                if (valor == 1)
                {
                    if (global.sons < 1)
                    {
                        global.sons += .1
                    }
                }
                else 
                {
                    if (global.sons > 0)
                    {
                        global.sons -= .1
                    }	
                }
            }	
            break
        }
        
        salva_config()
    }
}
else 
{
    xscale = lerp(xscale, esc_x_original, .1)
    yscale = lerp(yscale, esc_y_original, .1)
    
    mouse_on = false
}