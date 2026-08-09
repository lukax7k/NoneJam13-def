

if (minha_runa == noone) exit

#region Efeitos

if (trava)
{
    shader_set(sh_pisca_branco)
    
    draw_sprite_ext(minha_runa.spr, 0, x, y, xscale, yscale, 0, image_blend, image_alpha)

    shader_reset()
}
else 
{
	    draw_sprite_ext(minha_runa.spr, 0, x, y, xscale, yscale, 0, image_blend, image_alpha)
}

if (trava) exit

escreve_texto(fnt_texto, x, y - 150, minha_runa.nome, .2, .2, 0)

draw_set_font(fnt_texto)
draw_set_valign(0)
draw_set_halign(1)

var _txt_h = string_height("I") * 1.5

draw_text_ext_transformed(x, y + 150, minha_runa.desc, _txt_h, 220 * 5, .2, .2, 0)


draw_set_font(-1)
draw_set_valign(-1)
draw_set_halign(-1)

#endregion

