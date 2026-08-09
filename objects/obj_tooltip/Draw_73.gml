draw_self()

if (image_yscale > 1)
{
    var _marg = 6

    var _spr_y = y + _marg + sprite_get_height(meu_spr)/2
    var _spr_x = x - sprite_width/2 + _marg + sprite_get_width(meu_spr)/2
    
    draw_sprite_ext(meu_spr, 0, _spr_x, _spr_y, 1, 1, 0, c_white, meu_alpha)
    
    var _largura_titulo = sprite_width - sprite_get_width(meu_spr) - _marg * 3
    
    var _titulo_y = _spr_y - _marg/2
    var _titulo_x = (x - sprite_width/2) + sprite_get_width(meu_spr) + _marg * 2
    
    var _level_txt_y = _spr_y + _marg/2
    var _level_txt_x = _titulo_x + 1
    
    draw_set_halign(0)
    draw_set_valign(1)
    draw_set_font(fnt_texto)
    
    var _level_txt = string(meu_nivel) + "/" + string(meu_nivel_max)
    
    draw_text_transformed_colour(_titulo_x, _titulo_y, meu_titulo, .05, .05, 0, c_white, c_white, c_white, c_white, meu_alpha)
    draw_text_transformed_colour(_level_txt_x, _level_txt_y, _level_txt, .05, .05, 0, c_white, c_white, c_white, c_white, meu_alpha)
    
    draw_set_halign(-1)
    draw_set_valign(-1)
    draw_set_font(-1)
    
    draw_set_halign(0)
    draw_set_valign(0)
    draw_set_font(fnt_texto)
    
    var _sep = string_height("I") + 12
    
    var _larg_txt = (sprite_width * 16) - _marg * 2
    var _txt_x = (x - sprite_width /2)  + _marg
    var _txt_y = y + sprite_get_height(meu_spr) + _marg * 2
    
    draw_text_ext_transformed_colour(_txt_x, _txt_y, meu_texto, _sep, _larg_txt, .05, .05, 0, c_white, c_white, c_white, c_white, meu_alpha)
    
    
    
    var _moeda_y = y + sprite_height - _marg - _marg/2
    var _moeda_x = x - _marg
    
    var _custo_x = x + _marg
    
    draw_set_halign(1)
    draw_set_valign(1)
    draw_set_font(fnt_texto)
    
    
    if (meu_nivel == meu_nivel_max)
    {
        draw_text_ext_transformed_colour(x, _moeda_y, "Nível Max.", _sep, _larg_txt, .06, .06, 0, c_white, c_white, c_white, c_white, meu_alpha)
    }
    else 
    {
        if (meu_dinheiro_2 != noone)
        {
           _moeda_x = x - _marg * 4
           _custo_x = x - _marg * 2
           var _moeda_2_x = x + _marg * 2
           var _custo_2_x = x + _marg * 4
           
           draw_sprite_ext(meu_sprite_coin_1, 0, _moeda_x, _moeda_y, .7, .7, 0, c_white, meu_alpha)
           
           draw_text_ext_transformed_colour(_custo_x, _moeda_y, meu_custo_1, _sep, _larg_txt, .06, .06, 0, c_white, c_white, c_white, c_white, meu_alpha)
           draw_sprite_ext(meu_sprite_coin_2, 0, _moeda_2_x, _moeda_y, .7, .7, 0, c_white, meu_alpha)
           
           draw_text_ext_transformed_colour(_custo_2_x, _moeda_y, meu_custo_2, _sep, _larg_txt, .06, .06, 0, c_white, c_white, c_white, c_white, meu_alpha)
        }
        else 
        {
           draw_sprite_ext(meu_sprite_coin_1, 0, _moeda_x, _moeda_y, .7, .7, 0, c_white, meu_alpha)
           
           draw_text_ext_transformed_colour(_custo_x, _moeda_y, meu_custo_1, _sep, _larg_txt, .06, .06, 0, c_white, c_white, c_white, c_white, meu_alpha)
        }
    }
        
    
    
    draw_set_halign(-1)
    draw_set_valign(-1)
    draw_set_font(-1)
}




