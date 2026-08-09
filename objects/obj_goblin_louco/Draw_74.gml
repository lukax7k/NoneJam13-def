
var _amount = (vida / vida_max) * lifebar_w
var _amount_fixed = (vida_max / vida_max) * lifebar_w
var _amount_feedback = (vida_feedback / vida_max) * lifebar_w
var _x1 = 140
var _y1 = display_get_gui_height() - lifebar_h * 2
var _x2 = _x1 + _amount
var _x2_fixed = _x1 + _amount_fixed
var _x2_feedback = _x1 + _amount_feedback
var _y2 = _y1 + lifebar_h

// Borda
draw_set_colour(color_4)
draw_rectangle(_x1 + 4, _y1 + 4, _x2_fixed - 4, _y2 - 4, false)
draw_set_colour(-1)

// Fundo
draw_set_colour(color_2)
draw_rectangle(_x1, _y1, _x2_fixed, _y2, false)
draw_set_colour(-1)

// Feedback
draw_set_colour(color_4)
draw_rectangle(_x1, _y1, _x2_feedback, _y2, false)
draw_set_colour(-1)

// Barra de vida
draw_set_colour(color_red)
draw_rectangle(_x1, _y1, _x2, _y2, false)
draw_set_colour(-1)

var _txt = "Bombástico"

escreve_texto(fnt_texto, _x1 + _amount_fixed /2, _y1 - lifebar_h, _txt)
