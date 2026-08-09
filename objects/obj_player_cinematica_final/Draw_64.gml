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
    case rm_cinematica_4:
    {
        _texto = "Suas ações o trouxeram até aqui, a conclusão de seu destino, moldado por nada além de suas próprias decisões... Satisfação, Arrependimento, as sombras do além ecoam para dentro de ti, saudando as sombras do seu próprio âmago... "
    }	
    break
    case rm_cinematica_4a:
    {
        _texto = "Suas ações o trouxeram até aqui, a conclusão de seu destino, moldado por nada além de suas próprias decisões... Mas você não está sozinho, tua virtude iluminou o caminho entre as sombras, sem mais escolhas, o abismo revela sua verdadeira forma..."
    }	
    break
    case rm_cinematica_4b:
    {
        _texto = "Suas ações o trouxeram até aqui, a conclusão de seu destino, moldado por nada além de suas próprias decisões... Fez o que julgou necessário para chegar até aqui, e as sombras deixadas pelo caminho farão o necessário para leva-lo com elas..."
    }	
    break
    
}

if (x >= 128)
{
    
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
            switch (room) 
            {
                case rm_cinematica_4:
                {
                    global.level_4_completo = true
                    room_transition(rm_level_4, tr_diagonal_right, 60) 	
                }
                break
                case rm_cinematica_4a:
                {
                    global.level_4_completo = true
                    global.level_4a = true
                    room_transition(rm_level_4, tr_diagonal_right, 60) 	
                }
                break
                case rm_cinematica_4b:
                {
                    global.level_4_completo = true
                    global.level_4b = true
                    room_transition(rm_level_4, tr_diagonal_right, 60) 	
                }
                break
            }
            
        }
    }
    
    draw_set_font(fnt_texto)
    
    draw_text_ext_transformed_colour(_txt_x, _txt_y, _txt_atual, _txt_h, _txt_w, .2, .2, 0, c_white, c_white, c_white, c_white, _txt_alpha)
    
    draw_set_font(-1)
    
}



