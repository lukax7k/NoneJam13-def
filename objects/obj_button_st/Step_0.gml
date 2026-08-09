if (global.pause) exit

var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()

var _spr_w = sprite_get_width(spr_ui_button)
var _spr_h = sprite_get_height(spr_ui_button)

var _button_x = _gui_w - _spr_w * 1.2
var _button_y = _spr_h 

var _mousex = device_mouse_x_to_gui(0)
var _mousey = device_mouse_y_to_gui(0)

mouse_on = point_in_rectangle(_mousex, _mousey, _button_x - (_spr_w * 2) /2, _button_y - _spr_h/2, _button_x + (_spr_w * 2) /2, _button_y + _spr_h/2)

if (mouse_on)
{
    if (mouse_check_button_released(mb_left))
    {
        if (room == rm_mapa)
        {
            room_transition(rm_skilltree, tr_diagonal_right, 60)
        }
        else 
        {
            room_transition(rm_mapa, tr_diagonal_right, 60)	
        }
       
    }
}

