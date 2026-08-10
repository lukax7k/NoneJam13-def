if (global.in_transition) exit

var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()

var _marg = 24

var _caixa_x1 = _marg
var _caixa_w = _gui_w - _marg * 2
var _caixa_h = 160
var _caixa_y1 = _gui_h - _marg - _caixa_h

var _texto = "texto"

switch (room) 
{
    case rm_cinematica_1a:
    {
        _texto = "Inspirado pela honestidade do aventureiro brilhante, o pequeno slime presenteou seu grande Rei com sua moeda da sorte, graças a esse gesto, o coração do Rei Slime amoleceu, agora, decidido a proteger todos aqueles que confiam em sua liderança!"
    }	
    break
    case rm_cinematica_1a_completo:
    {
        _texto = "Após testemunhar com seus próprios olhos o coração justo do viajante, o grande Rei o reconhece, 'Serás bem vindo em nossas terras viajante, ajudaremos para que se fortaleça e cumpra seu papel.'"
    }	
    break
    case rm_cinematica_1b:
    {
        _texto = "Após a saída do viajante, o reino de gosma caiu sobre uma onda de azar terrível, enlouquecidos, a população destronou o rei e instaurou um regime de caos, liderados pelo Anárquico, um Slime cruel que almeja apenas a destruição!"
    }	
    break
    case rm_cinematica_1b_completo:
    {
        _texto = "Mesmo derrotado, o terrível Slime não esta satisfeito, seu ódio se direciona para um único inimigo, e ele não descansaria até que o destruísse..."
    }	
    break
    case rm_cinematica_2a:
    {
        _texto = "Você ajuda o esqueleto perdido a encontrar seu caminho, graças a sua generosidade, ele se sente inspirado a criar um soldado robo defensor de sua cidade, um simbolo de esperança para todos os esqueletos!"
    }	
    break
    case rm_cinematica_2a_completo:
    {
        _texto = "O poderoso robo, após sentir a bondade no coração do viajante, decide que o pequeno ser não representa ameaça a seus iguais. Decidindo enfim, ajuda-lo a seguir sua viagem."
    }	
    break
    case rm_cinematica_2b:
    {
        _texto = "Sem sua ajuda, o esqueleto acaba chegando até Goblinia, a cidade dos goblins, frustrado, ele aprende a arte das explosões goblins, e decide criar uma máquina mortífera que busca vingança contra aquele que o abandonou!"
    }	
    break
    case rm_cinematica_2b_completo:
    {
        _texto = "O rancor não desaparece facilmente, ele se perpetua por desejos de vingança, alimentando o anseio de machucar aqueles que te machucaram, e assim como o rancor, a Máquina da Morte não vai desaparecer."
    }	
    break
    case rm_cinematica_3a:
    {
        _texto = "Você acalma o pequenino, que vai embora para casa, inspirado por sua piedade, o pequeno goblin treina arduamente, se tornando um guerreiro valoroso e honravel, em busca de um confronto justo com seu herói!"
    }	
    break
    case rm_cinematica_3a_completo:
    {
        _texto = "Após um duelo espetacular, o Honrado se encanta ainda mais, jurando ajudar aquele que guiou seu caminho quando ele mais precisou!"
    }	
    break
    case rm_cinematica_3b:
    {
        _texto = "Seu chute arremessa a pequena ameaça para beeeem longe do caminho! O pequeno agora, obcecado por vingança, teve sua mente dominada por apenas uma coisa: Explosões!"
    }	
    break
    case rm_cinematica_3b_completo:
    {
        _texto = "Suas bombas podem ter acabado por agora, mas sua loucura apenas o consumiu mais, o pequeno goblin insano não irá parar até explodir tudo..."
    }	
    break
    case rm_cinematica_final:
    {
        _texto = "Após vencer sua própria sombra, o abismo retorna para seu berço, adormecido, mas não derrotado, o mundo está salvo por hora, mas incontáveis conflitos se alastram pelas sombras... Seu trabalho ainda não terminou, então continue, e ilumine o caminho de todos!"
    }	
    break
    case rm_cinematica_final_a:
    {
        _texto = "Com a aliança de todos os povos, o verdadeiro abismo sucumbiu, o mundo enfim livre de sombras pode prosperar, suas decisões justas trouxeram luz para um mundo afundado em escuridão. Parabéns viajante!"
    }	
    break
    case rm_cinematica_final_b:
    {
        _texto = "Seu poder prevaleceu ao de seus inimigos, todos aqueles que se opuseram a você sucumbiram, somente você há de brilhar, e aqueles que não forem dignos de sua luz, se afogarão em trevas..."
    }	
    break

}

caixa_h_atual = lerp(caixa_h_atual, _caixa_h, .1)
draw_sprite_stretched(spr_caixa, 0, _caixa_x1, _caixa_y1, _caixa_w, caixa_h_atual)

if (caixa_h_atual >= _caixa_h - 5)
    {
        var _spc_x = _caixa_x1 + _caixa_w - 32
        var _spc_y = _caixa_y1 + _caixa_h - 32
        
        sub += .1
        
        draw_sprite_ext(spr_espaco, 0, _spc_x - 50, _spc_y, 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_setinha, sub, _spc_x, _spc_y, 2, 2, 0, c_white, 1)
    }

var _txt_alpha = caixa_h_atual/160

var _txt_x = _caixa_x1 + _marg
var _txt_y = _caixa_y1 + _marg
var _txt_w = (_caixa_w - _marg * 2) * 5
var _txt_h = string_height("I") * 8

var _txt_atual = string_copy(_texto, 1, text_index)
var _tamanho_txt = string_length(_texto)

if (text_index <= _tamanho_txt + 3)
{
    text_index += .3
}

if (keyboard_check_released(vk_space))
{
    if (text_index < _tamanho_txt)
    {
        text_index = _tamanho_txt
    }
    
}

if (text_index > _tamanho_txt)
{
    if (keyboard_check_released(vk_space))
    {
        
        if (room == rm_cinematica_1a)
        {
            global.level_1_completo = true
            global.level_1a = true
        }
        else if (room == rm_cinematica_1a_completo)
        {
            global.level_1a_completo = true
        }
        else if (room == rm_cinematica_1b)
        {
            global.level_1_completo = true
            global.level_1b = true
        }
        else if (room == rm_cinematica_1b_completo)
        {
            global.level_1b_completo = true
        }
        else if (room == rm_cinematica_2a)
        {
            global.level_2_completo = true
            global.level_2a = true
        }
        else if (room == rm_cinematica_2a_completo)
        {
            global.level_2a_completo = true
        }
        else if (room == rm_cinematica_2b)
        {
            global.level_2_completo = true
            global.level_2b = true
        }
        else if (room == rm_cinematica_2b_completo)
        {
            global.level_2b_completo = true
        }
        else if (room == rm_cinematica_3a)
        {
            global.level_3_completo = true
            global.level_3a = true
        }
        else if (room == rm_cinematica_3a_completo)
        {
            global.level_3a_completo = true
        }
        else if (room == rm_cinematica_3b)
        {
            global.level_3_completo = true
            global.level_3b = true
        }
        else if (room == rm_cinematica_3b_completo)
        {
            global.level_3b_completo = true
        }
        
        if (room == rm_cinematica_final or room == rm_cinematica_final_a or room == rm_cinematica_final_b)
        {
            room_transition(rm_agradecimentos, tr_diagonal_right, 60)
            salvar_jogo()
        }
        else 
        {
        	room_transition(rm_mapa, tr_diagonal_right, 60)
            salvar_jogo()
        }
        
        
    }
    
}

draw_set_font(fnt_texto)

draw_text_ext_transformed_colour(_txt_x, _txt_y, _txt_atual, _txt_h, _txt_w, .2, .2, 0, c_white, c_white, c_white, c_white, _txt_alpha)

draw_set_font(-1)





