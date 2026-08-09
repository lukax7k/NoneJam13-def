// Draw GUI
var _gx = (mouse_x - camera_get_view_x(view_camera[0])) * (display_get_gui_width() / camera_get_view_width(view_camera[0]));
var _gy = (mouse_y - camera_get_view_y(view_camera[0])) * (display_get_gui_height() / camera_get_view_height(view_camera[0]));

ang ++

draw_sprite_ext(spr_mira, 0, _gx, _gy, 4, 4, ang, c_white, 1);