#region Efeito de piscar e draw_self


if (timer_pisca)
{
    timer_pisca --
    
    shader_set(sh_pisca_branco)
    draw_self()
    shader_reset()
}
else 
{
    draw_self()	
}

#endregion



