


draw_set_valign(1)
draw_set_halign(1)
draw_set_font(fnt_texto)

var _gui_w = display_get_gui_width()

var _wave = global.wave == final_wave ? "Final" : string(global.wave)

draw_text_transformed(_gui_w/2, 30, "Onda " + _wave, .3, .3, 0)

if (timer_wave > 0)
{
    draw_text_transformed(_gui_w/2, 70, txt_timer, .3, .3, 0)
}


draw_set_valign(-1)
draw_set_halign(-1)
draw_set_font(-1)

// icon player

if (instance_exists(obj_player))
{
    with (obj_player) 
    {
        
        // barra de vida
        var _amount = (vida / vida_max) * other.lifebar_w
        var _amount_fixed = (vida_max / vida_max) * other.lifebar_w
        var _amount_feedback = (vida_feedback / vida_max) * other.lifebar_w
        var _x1 = display_get_gui_width() - 74
        var _y1 = 66
        var _x2 = _x1 - _amount
        var _x2_fixed = _x1 - _amount_fixed
        var _x2_feedback = _x1 - _amount_feedback
        var _y2 = _y1 - other.lifebar_h
        
        // Borda
        draw_set_colour(other.color_4)
        draw_rectangle(_x1 + 4, _y1 + 4, _x2_fixed - 4, _y2 - 4, false)
        draw_set_colour(-1)
        
        // Fundo
        draw_set_colour(other.color_2)
        draw_rectangle(_x1, _y1, _x2_fixed, _y2, false)
        draw_set_colour(-1)
        
        // Feedback
        draw_set_colour(other.color_4)
        draw_rectangle(_x1, _y1, _x2_feedback, _y2, false)
        draw_set_colour(-1)
        
        // Barra de vida
        draw_set_colour(other.color_green)
        draw_rectangle(_x1, _y1, _x2, _y2, false)
        draw_set_colour(-1)
        
        var _txt = string(vida) + "/" + string(vida_max)
        
        escreve_texto(fnt_texto, _x1 - _amount_fixed /2, _y1 - other.lifebar_h/2, _txt)
        
        
        
        
        // barra de energia
        var _amount_e = (timer_esquiva / tempo_esquiva) * other.energy_bar_w 
        var _amount_fixed_e = (tempo_esquiva / tempo_esquiva) * other.energy_bar_w
        var _x1_e = display_get_gui_width() - 60
        var _y1_e = 80
        var _x2_e = _x1_e - _amount_e
        var _x2_fixed_e = _x1_e - _amount_fixed_e
        var _y2_e = _y1_e - other.lifebar_h/3
        
        // Borda
        draw_set_colour(other.color_4)
        draw_rectangle(_x1_e + 4, _y1_e + 4, _x2_fixed_e - 4, _y2_e - 4, false)
        draw_set_colour(-1)
        
        // Fundo
        draw_set_colour(other.color_2)
        draw_rectangle(_x1_e, _y1_e, _x2_fixed_e, _y2_e, false)
        draw_set_colour(-1)
        
        // Barra de energia
        draw_set_colour(other.color_blue)
        draw_rectangle(_x1_e, _y1_e, _x2_e, _y2_e, false)
        draw_set_colour(-1)
        
    }
}

draw_sprite_ext(spr_ui_icon_player, 0, _gui_w - 48, 48, 4, 4, 0, c_white, 1)

var _qtd_runas = array_length(global.power_ups_atuais)

for (var i = 0; i < _qtd_runas; i++) 
{
     var _x = (i % 2 == 0) ? _gui_w - 46 : _gui_w - 82;
    draw_sprite_ext(global.power_ups_atuais[i].spr, 0, _x, 144 + 36 * i, 2, 2, 0, c_white, 1)	
}

