if (global.pause or global.tela_power_up or global.in_transition) 
{
    image_speed = 0
    exit
}
else 
{
    image_speed = 1	
}

ajusta_depth()
ajusta_fogo()
causa_dano()




