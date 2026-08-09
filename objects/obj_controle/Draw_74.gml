if (room != rm_mapa and room != rm_skilltree and room != rm_level_1 and room != rm_level_2 and room != rm_level_3 and room != rm_level_4) exit

draw_sprite_ext(spr_gold, 0, 30, 30, 3, 3, 0, c_white, 1)
draw_sprite_ext(spr_slime_drop, 0, 30, 80, 3, 3, 0, c_white, 1)
draw_sprite_ext(spr_bone_drop, 0, 30, 130, 3, 3, 0, c_white, 1)
draw_sprite_ext(spr_claw_drop, 0, 30, 180, 3, 3, 0, c_white, 1)

draw_set_font(fnt_texto)
draw_set_valign(1)
draw_set_halign(0)

draw_text_transformed(65, 30, global.gold, .25, .25, 0)
draw_text_transformed(65, 80, global.slime, .25, .25, 0)
draw_text_transformed(65, 130, global.bones, .25, .25, 0)
draw_text_transformed(65, 180, global.claw, .25, .25, 0)


draw_set_font(-1)
draw_set_valign(-1)
draw_set_halign(-1)