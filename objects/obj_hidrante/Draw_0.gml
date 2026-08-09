if (timer_pisca)
{
    timer_pisca --
    
    shader_set(sh_pisca_branco)
    
    var _ativo = timer_choque > 0 ? 1 : 0
    
    draw_sprite(spr_hidrante, _ativo, x, y)
    
    shader_reset()
}
else 
{
    var _ativo = timer_choque > 0 ? 1 : 0
    
    draw_sprite(spr_hidrante, _ativo, x, y)
}
