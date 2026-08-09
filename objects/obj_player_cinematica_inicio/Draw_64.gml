var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()

var _marg = 24

var _caixa_x1 = _marg
var _caixa_w = _gui_w - _marg * 2
var _caixa_h = 160
var _caixa_y1 = _gui_h - _marg - _caixa_h

var _texto = 
[
    "Tão jovem, o pequeno Sunny parte em sua jornada, em busca de seu destino...",
    "'Atravesse as grandes montanhas, passe por toda a Terra dos Monstros e chegue até a fenda do abismo, pois somente tua luz pode salvar nosso mundo das trevas.'",
    "Palavras tão pesadas lançadas sobre uma pequena criança, que tipo de destino aguarda o pequeno iluminado?",
    "Somente suas ações dirão..."
]


if (x >= 80)
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
    
    var _ultimo_texto = array_length(_texto) - 1
    var _txt_atual = string_copy(_texto[index_texto], 1, text_index)
    var _tamanho_txt = string_length(_texto[index_texto])
    
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
            if (index_texto < _ultimo_texto)
            {
                index_texto ++
                text_index = 0
            }
            else 
            {
                room_transition(rm_mapa, tr_diagonal_right, 60)	
            }
        }
    }
    
    draw_set_font(fnt_texto)
    
    draw_text_ext_transformed_colour(_txt_x, _txt_y, _txt_atual, _txt_h, _txt_w, .2, .2, 0, c_white, c_white, c_white, c_white, _txt_alpha)
    
    draw_set_font(-1)
    
}



