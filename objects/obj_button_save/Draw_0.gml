draw_sprite_ext(spr, mouse_on, x, y, xscale, 1.2, 0, c_white, 1)

draw_set_font(fnt_texto)
draw_set_halign(1)
draw_set_valign(1)

draw_set_colour(c_black)


draw_text_transformed(x + .5, y + .5, opcao, .05, .05, 0)

draw_set_colour(-1)

draw_text_transformed(x, y, opcao, .05, .05, 0)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)