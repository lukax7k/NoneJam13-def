if (!ativo) exit

var _spr_index = 0

if (level > 0 && level < max_level)
{
    _spr_index = 1
}

if (level == max_level)
{
    _spr_index = 2
}

draw_sprite_ext(spr, _spr_index, x, y, xscale, yscale, image_angle, image_blend, 1)
