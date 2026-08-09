if (global.pause or global.tela_power_up or global.in_transition) 
{
    image_speed = 0
    exit
}
else 
{
    image_speed = 1
    encolhendo()	
    
    if (timer_eletrizada > 0)
    {
        timer_eletrizada --	
    }
    else 
    {
        ds_list_clear(lista_atacados)
        timer_eletrizada = tempo_eletrizada	
    }
}

