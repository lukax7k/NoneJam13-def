draw_sprite_ext(meu_spr, mouse_on, x, y_original, xscale, yscale, 0, image_blend, meu_alpha)

if (valor == 1)
{
    var _txt = "Música: 100"
    
    _txt = tipo == "musica" ? "Música" : "Sons"
    
    var _val = string(round(variable_global_get(tipo) * 100))
    
    draw_set_font(fnt_texto)
    draw_set_halign(1)
    draw_set_valign(1)
    
    draw_set_colour(c_black)
    
    draw_text_transformed(x - 146, y + 2, _txt + ": " + _val, .2, .2, 0)
    
    draw_set_colour(-1)
    
    draw_text_transformed(x - 148, y, _txt + ": " + _val, .2, .2, 0)
    
    draw_set_font(-1)
    draw_set_halign(-1)
    draw_set_valign(-1)
}