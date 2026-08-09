draw_set_font(fnt_texto)
draw_set_halign(1)
draw_set_valign(1)
draw_set_alpha(alfa)

draw_set_colour(c_black)

draw_text_transformed(x + 1, y + 1, valor, .14, .14, 0)

draw_set_colour(-1)

draw_text_transformed(x, y, valor, .14, .14, 0)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)
draw_set_alpha(1)