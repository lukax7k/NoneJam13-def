if (global.pause or global.in_transition) exit

mouse_entra()
mouse_sai()

if (!ativo) 
{
    xscale = 0
    yscale = 0
    
    exit
}
    
crescendo()
atualiza_tooltip()
    
if (instance_exists(pai))
{
    var _tam_ideal = point_distance(pai.x, pai.y, x, y) + 8
    
    if (tam_linha < _tam_ideal + 2)
    {
        tam_linha = lerp(tam_linha, _tam_ideal, .1)
    }
    
}
    
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id)
var _mouse_click = mouse_check_button_pressed(mb_left)

if (timer_checar > 0) timer_checar --

if (timer_checar <= 0)
{
    var _minha_var = variable_global_get(variavel)
    if (_minha_var > 0)
    {
        var _qtd = array_length(alvos)
        
        if (_qtd > 0)
        {
            for (var i = 0; i < _qtd; i++) 
            {
                var _atual = alvos[i]
                _atual.ativo = true	
                _atual.ativei = true
                _atual.pai = id
            }
        }
    }

}



if (_mouse_sobre)
{
    
    if (_mouse_click)
    {
        
        toca_sfx(snd_click, .1, 2)
     
        var _compra = false
        
        var _dinheiro = variable_global_get(moeda)
        var _dinheiro_2 = variable_global_get(moeda_2)
        
        
        var _custo_atual = custo + ceil(custo * .5) * level
        var _custo_atual_2 = custo_2 + ceil(custo_2 * .5) * level
        
        if (_dinheiro_2 != undefined)
        {
            if (_dinheiro >= _custo_atual  && _dinheiro_2 >= _custo_atual_2 && level < max_level)
            {
                variable_global_set(moeda, _dinheiro - _custo_atual)
                variable_global_set(moeda_2, _dinheiro_2 - _custo_atual_2)
                
                _compra = true
                
                level ++
                
                variable_global_set(variavel, level)
                
                if (aumento != "")
                {
                    var _bonus = variable_global_get(aumento) + 1
                    
                    variable_global_set(aumento, _bonus)
                }
                
            }
        }
        else 
        {
        	if (_dinheiro >= _custo_atual && level < max_level)
            {
                variable_global_set(moeda, _dinheiro - _custo_atual)
                
                _compra = true
                
                level ++
                
                variable_global_set(variavel, level)
                
                if (aumento != "")
                {
                    var _bonus = variable_global_get(aumento) + 1
                    
                    variable_global_set(aumento, _bonus)
                }
                
                
            }
        }
        
           
        if (_compra)
            
        {
            var _qtd = array_length(alvos)
    
            if (_qtd > 0)
            {
                for (var i = 0; i < _qtd; i++)
                {
                    var _atual = alvos[i]
                    
                    if (_atual.ativo == false)
                    {
                        _atual.ativo = true
                        _atual.ativei = true
                        _atual.pai = id
                    }
                }
            }
        }
        
    }
    
}