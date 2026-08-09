if (global.pause or global.tela_power_up or global.in_transition) 
{
    image_speed = 0
    exit
}
else 
{
    image_speed = 1	
    
    if (timer_gelo)
    {
        timer_gelo --
        
        image_blend = c_aqua
        max_vel = meu_max_vel - 1 + global.aumento_lentidao_gelo /2
    }
    else 
    {
    	max_vel = meu_max_vel
    }
    
    if (timer_molhado)
    {
        image_blend = c_blue
        timer_molhado --
        
    }
    
    if (timer_duracao_veneno)
    {
        timer_dano_veneno --
        timer_duracao_veneno --
        
        image_blend = c_green
        
        if (timer_dano_veneno <= 0)
        {
            toma_dano(1 + global.aumento_dano_veneno, ["veneno"])
            timer_dano_veneno = tempo_dano_veneno
        }
        
    }
    
    if (!timer_gelo and !timer_molhado and !timer_duracao_veneno)
    {
        image_blend = c_white
    }
    
    estado()
    
    empurra_vento()
    empurra_agua()
}



