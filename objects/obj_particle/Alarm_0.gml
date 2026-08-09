// variaveis da camera, margem e quantidade de particulas
var _camera_x = camera_get_view_x(view_camera[0])
var _camera_y = camera_get_view_y(view_camera[0])
var _camera_w = camera_get_view_width(view_camera[0])
var _camera_h = camera_get_view_height(view_camera[0])
var _buffer = 40
var _qtd = irandom_range(25, 30)

repeat (_qtd) 
{
	var _random_x = random_range(_camera_x - _buffer, _camera_x + _camera_w + _buffer)
    var _random_y = random_range(_camera_y - _buffer, _camera_y + _camera_h + _buffer)
    
    part_particles_create(ps_sparks, _random_x, _random_y, part_sparkle, 1)
}


alarm[0] = 40