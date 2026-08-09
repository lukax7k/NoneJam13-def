ajusta_escala()
checa_piso()

if (global.pause or global.tela_power_up or global.in_transition) 
{
    image_speed = 0
    exit
}
else 
{
    if (global.game_over)
    {
        velh = 0
        velv = 0
        
        exit
    }
    
    image_speed = 1	
}

#region Execução

ajusta_depth()
toma_dano_fogo()

#endregion

#region Colisão e movimento

// colisão horizontal

if (place_meeting(x + velh, y, colisoes))
{
    // pegando o sinal da vel horizontal
    var _svelh = sign(velh)
    
    // enquanto eu não estiver colidindo na parede no próximo pixel
    while (!place_meeting(x + _svelh, y, colisoes)) 
    {
        // avanço um pixel
        x += _svelh	
    }
    
    // isso só roda quando o while deixar de acontecer
    //zero a velh
    velh = 0
}


x += velh

// colisão vertical

if (place_meeting(x, y + velv, colisoes))
{
    var _svelv = sign(velv)
    
    while (!place_meeting(x, y + _svelv, colisoes)) 
    {
        y += _svelv	
    }
    
    velv = 0
}

y += velv

#endregion
