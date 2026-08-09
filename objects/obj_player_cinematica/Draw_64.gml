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
    case rm_cinematica_1:
    {
        _texto = "Uma pequena moeda brilhante reluz no chão a sua frente, ela parece trazer boa sorte! Mas antes que possa pega-la, um slime aparece aos gritos: 'Devolva minha moeda da sorte seu canalha brilhante!'. Você deseja..."
    }	
    break
    case rm_cinematica_2:
    {
        _texto = "Enquanto segue seu caminho, um esqueleto aparece em sua frente, assustado, ele diz: 'A-alto lá! É melhor n-não fazer nenhuma gracinha! Eh... Eu estou perdido, sabe me dizer para que lado fica a Capital dos Ossos?' Você..."
    }	
    break
    case rm_cinematica_3:
    {
        _texto = "Um pequeno goblin bebê está bloqueando seu caminho, ele parece irritado, grunindo os dentes para intimidar você. Você vai... "
    }	
    break
}

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
    
    draw_set_font(fnt_texto)
    
    draw_text_ext_transformed_colour(_txt_x, _txt_y, _txt_atual, _txt_h, _txt_w, .2, .2, 0, c_white, c_white, c_white, c_white, _txt_alpha)
    
    draw_set_font(-1)
    
    if (text_index >= _tamanho_txt)
    {
        var _botao_1 = instance_create_layer(48, 24, "Instances", obj_button_cinematica)
        _botao_1.opcao = 0
        _botao_1.image_yscale = 0
        
        var _botao_2 = instance_create_layer(208, 24, "Instances", obj_button_cinematica)
        _botao_2.opcao = 1
        _botao_2.image_yscale = 0
        
    }
}



