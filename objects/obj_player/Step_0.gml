if (global.pause or global.tela_power_up or global.in_transition or global.game_over) 
{
    image_speed = 0
    exit
}
else 
{
    image_speed = 1	
    
    #region Execução

    estado()
    pega_input()
    cooldown_dano()
    atirando()
    esquivando()
    cria_estrela()
    
    #endregion
    
    


    #region Colisão e movimento
    
    if (up xor down or left xor right)
    {
        
        // descobrindo a direção em que o player ta indo
        var _dir = point_direction(0, 0, (right - left), (down - up))
        
        // pegando o valor do velh
        var _max_velh = lengthdir_x(max_vel, _dir)
        velh = lerp(velh, _max_velh, acel)
        
        // pegando o valor do velv
        var _max_velv = lengthdir_y(max_vel, _dir)
        velv = lerp(velv, _max_velv, acel)
        
    }
    else 
    {
        velh = lerp(velh, 0, acel)
        velv = lerp(velv, 0, acel)	
    }
    
    if (timer_lento)
    {
        timer_lento --
        image_blend = c_lime
        max_vel = meu_max_vel/2
    }
    else 
    {
        image_blend = c_white
        max_vel = meu_max_vel
    }
    
    #endregion
}




