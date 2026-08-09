// boss triplo

vida_base = 6000

slime_vida = 0
slime_vida_max = vida_base
maquina_vida = 0
maquina_vida_max = vida_base
goblin_vida = 0
goblin_vida_max = vida_base

vida = slime_vida + maquina_vida + goblin_vida
vida_max = slime_vida_max + maquina_vida_max + goblin_vida_max
vida_feedback = vida_max

//barra de vida
color_red = make_colour_rgb(255, 0, 64)
color_green = make_colour_rgb(90, 205, 140)
color_2 = make_colour_rgb(19, 19, 19)
color_3 = make_colour_rgb(19, 19, 19)
color_4 = c_white

lifebar_w = 1000
lifebar_h = 20

 boss_1_derrotado = false
 boss_2_derrotado = false
 boss_3_derrotado = false