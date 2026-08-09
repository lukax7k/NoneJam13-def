#region Variáveis

// controle
pai = noone
dano = 1

// timers
tempo_dano = 60
timer_dano = 0

#endregion

#region Funções

causa_dano = function()
{
    var _alvo = instance_position(x, y, obj_entidade)
    
    if (_alvo)
    {
        if (_alvo.pega_fogo)
        {
            _alvo.pega_fogo = false
            _alvo.timer_fogo = _alvo.tempo_fogo
            
            _alvo.toma_dano(1, ["fogo"])
            
        }
    }
}

ajusta_fogo = function()
{
    if (pai)
    {
        image_alpha = pai.image_alpha;
    
        var _fator = sprite_get_width(pai.sprite_index) / sprite_get_width(sprite_index);
        image_xscale = pai.image_xscale * _fator * 0.8;
    }
}

#endregion

