if (!ativo) exit
    
if (instance_exists(pai))
{
    var _dir = point_direction(pai.x, pai.y, x, y)
    
    var _x1 = pai.x + lengthdir_x(8, _dir)
    var _y1 = pai.y + lengthdir_y(8, _dir)
    var _x2 = pai.x + lengthdir_x(tam_linha - 8, _dir)
    var _y2 = pai.y + lengthdir_y(tam_linha - 8, _dir)
    
    draw_line_width_colour(_x1, _y1, _x2, _y2, 1, pai.image_blend, image_blend)
}



//var _variavel = variable_global_get(variavel)
//
//var _custo_atual = custo + ceil(custo * .5) * level
//
//var _txt = string("{0} {1} \n{2}/{3}", _custo_atual, moeda, _variavel, max_level)
//
//draw_text(x, y + 20, _txt)