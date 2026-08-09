var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()

draw_sprite_ext(spr_mouse_scroll, 0, _gui_w - 200, _gui_h - 120, 3, 3, 0, c_white, 1)
draw_sprite_ext(spr_mouse_right, 0, _gui_w - 200, _gui_h - 50, 3, 3, 0, c_white, 1)

draw_set_font(fnt_texto)
draw_set_halign(0)
draw_set_valign(1)

draw_text_transformed(_gui_w - 150, _gui_h - 120, "- Zoom", .2, .2, 0)
draw_text_transformed(_gui_w - 150, _gui_h - 50, "- Mover", .2, .2, 0)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)