minha_runa = variable_global_get(variavel)

if (global.pause or global.in_transition) exit
    
if (tempo_delay)
{
    tempo_delay --
}
else 
{
	if (trava)
    {
        toca_sfx(snd_runa_brilho, .2, 5)
        tween(id, "yscale", esc_y_original, tween_animation.quint_inout, 40)
    }
    else 
    {
        escolhe_runa()	
    }
}



if (yscale >= esc_y_original)
{
    trava = false
}



