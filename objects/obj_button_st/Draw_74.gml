var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()

var _spr_w = sprite_get_width(spr_ui_button)
var _spr_h = sprite_get_height(spr_ui_button)

var _button_x = _gui_w - _spr_w * 1.2
var _button_y = _spr_h 


draw_sprite_ext(spr_ui_button, mouse_on, _button_x, _button_y, 2, 1, 0, c_white, 1)

draw_set_font(fnt_texto)
draw_set_valign(1)
draw_set_halign(1)

var _text = room == rm_mapa ? "Melhorias" : "Voltar"

draw_set_colour(c_black)
draw_text_transformed(_button_x + 2, _button_y + 2, _text, .25, .25, 0)
draw_set_colour(-1)

draw_text_transformed(_button_x, _button_y, _text, .25, .25, 0)

draw_set_font(-1)
draw_set_valign(-1)
draw_set_halign(-1)


