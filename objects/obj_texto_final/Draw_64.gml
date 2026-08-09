draw_set_font(fnt_texto)
draw_set_valign(0)
draw_set_halign(1)

var _x1 = display_get_gui_width() /2
var _y1 = 60

var _txt_h = string_height("I") * 2

var _txt_w = (display_get_gui_width() * .8) * 4

var _txt = 
"Muito obrigado por jogar até aqui!\nEspero que tenha se divertido\nQueria deixar meu agradecimento mais que especial para minha namorada incrivel que me apoiou muito durante todo o projeto, sem ela eu com toda certeza não teria conseguido chegar até aqui. \n E um muito obrigado também aos meus amigos que me ajudaram testando o jogo, dando ideias e até desenhando a arte de capa do Itch!\n Por fim, um muito obrigado ao None por ser um excelente professor e novamente a você que jogou até aqui, nos vemos em uma próxima! - Ik"

draw_set_colour(c_black)

draw_text_ext_transformed(_x1 + 1, _y1 + 1, _txt, _txt_h, _txt_w, .25, .25, 0)

draw_set_colour(-1)

draw_text_ext_transformed(_x1, _y1, _txt, _txt_h, _txt_w, .25, .25, 0)


var _y2 = display_get_gui_height() - 60

var _txt_2 = "Aperte espaço para sair"


draw_set_colour(c_black)

draw_text_ext_transformed(_x1 + 1, _y2 + 1, _txt_2, _txt_h, _txt_w, .25, .25, 0)

draw_set_colour(-1)

draw_text_ext_transformed(_x1, _y2, _txt_2, _txt_h, _txt_w, .25, .25, 0)


draw_set_font(-1)
draw_set_valign(-1)
draw_set_halign(-1)