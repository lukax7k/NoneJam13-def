if (!ativo)
{
    
    shader_set(sh_grayscale)
    
    draw_sprite_ext(spr, sub, x, y, xscale, yscale, 0, image_blend, image_alpha)
    
    shader_reset()
}
else 
{
	draw_sprite_ext(spr, sub, x, y, xscale, yscale, 0, image_blend, image_alpha)

}