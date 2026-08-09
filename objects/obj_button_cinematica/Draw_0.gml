var _mouse_on = position_meeting(mouse_x, mouse_y, id)

draw_sprite_ext(sprite_index, _mouse_on, x, y, image_xscale, image_yscale, 0, c_white, 1)

draw_set_font(fnt_texto)
draw_set_halign(1)
draw_set_valign(1)

draw_text_transformed_colour(x + .5, y + .5, texto, .06, .06, 0, c_black, c_black, c_black, c_black, image_yscale)
draw_text_transformed_colour(x, y, texto, .06, .06, 0, c_white, c_white, c_white, c_white, image_yscale)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)


