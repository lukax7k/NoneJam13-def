if (room == rm_level_1)
{
    draw_set_valign(1)
    draw_set_halign(1)
    draw_set_font(fnt_texto)
    
    draw_text_transformed(640, 296, "Mover", .1, .1, 0)
    draw_text_transformed(608, 360, "Atirar", .1, .1, 0)
    draw_text_transformed(688, 360, "Esquivar", .1, .1, 0)
    
    draw_set_valign(-1)
    draw_set_halign(-1)
    draw_set_font(-1)
}