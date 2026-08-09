if (global.pause) exit

var _mouse_hold = mouse_check_button(mb_right)
var _mouse_click = mouse_check_button_pressed(mb_right)
var _mouse_relea = mouse_check_button_released(mb_right)
var _mouse_scroll = mouse_wheel_down() - mouse_wheel_up()

// sistema de zoom
if (_mouse_scroll != 0)
{
    global.zoom += _mouse_scroll * 0.1
}

global.zoom = clamp(global.zoom, 1, 2)

// ajustando o tamanho da camera
var _cam_w = camera_get_view_width(view_camera[0])
var _cam_h = camera_get_view_height(view_camera[0])

// novas dimensoes da view
var _view_w = lerp(_cam_w, cam_w * global.zoom, .1)
var _view_h = lerp(_cam_h, cam_h * global.zoom, .1)

camera_set_view_size(view_camera[0], _view_w, _view_h)

// centralizando o zoom
var _view_x = camera_get_view_x(view_camera[0])
var _view_y = camera_get_view_y(view_camera[0])

// atualizando a posição da camera
cam_x = lerp(_view_x, _view_x + (_view_w - cam_w * global.zoom)/2, .1)
cam_y = lerp(_view_y, _view_y + (_view_h - cam_h * global.zoom)/2, .1)


if (_mouse_click)
{
    mousex = mouse_x
    mousey = mouse_y
}

if (_mouse_hold)
{
    diff_x = mousex - mouse_x
    diff_y = mousey - mouse_y
    
    var _cam_x = camera_get_view_x(view_camera[0])
    var _cam_y = camera_get_view_y(view_camera[0])
    
    _cam_x += diff_x
    _cam_y += diff_y
    
    cam_x = _cam_x
    cam_y = _cam_y
    
    
}

cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]))
cam_y = clamp(cam_y, 0, room_height - camera_get_view_height(view_camera[0]))

camera_set_view_pos(view_camera[0], cam_x, cam_y)
