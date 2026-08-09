var _spr = sprite_index

if (opcao == "Apagar")
{
    
    if (global.apagar_saves)
    {
        _spr = spr_ui_button_normal_vermelho
    }
    else 
    {
        _spr = spr_ui_button_normal_cinza	
    }
}

draw_sprite_ext(_spr, mouse_on, x, y, xscale, 1.2, 0, c_white, 1)

gpu_set_tex_filter(false);

draw_set_font(fnt_texto)
draw_set_halign(1)
draw_set_valign(1)

draw_set_colour(c_black)

draw_text_transformed(x + .5, y + .5, opcao, .05, .05, 0)

draw_set_colour(-1)

draw_text_transformed(x, y, opcao, .05, .05, 0)

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)