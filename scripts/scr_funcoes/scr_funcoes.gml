

function ajusta_depth()
{
    depth = -y
}

function escreve_texto(_font = fnt_texto, _x, _y, _texto, _xscale = .25, _yscale = .25, _ang = 0, _alpha = 1)
{
    draw_set_halign(1)
    draw_set_valign(1)
    draw_set_font(_font)
    
    
    draw_text_transformed_colour(_x + 2, _y + 2, _texto, _xscale, _yscale, _ang, c_black, c_black, c_black, c_black, _alpha)
    
    
    
    draw_text_transformed_colour(_x, _y, _texto, _xscale, _yscale, _ang, c_white, c_white, c_white, c_white, _alpha)
    
    
    draw_set_halign(-1)
    draw_set_valign(-1)
    draw_set_font(-1)

}


function approach(_val1, _val2, _amount)
{
    if (_val1 < _val2)
    {
        _val1 += _amount
        if (_val1 > _val2)
        {
            return _val2
        }
    }
    else 
    {
        _val1 -= _amount	
        if (_val1 < _val2)
        {
            return _val2
        }
    }
    return _val1
}

function toca_musica_bg(_snd)
{
    if (!audio_is_playing(_snd))
    {
        audio_stop_all()
        
        audio_play_sound(_snd, 0, 1)
        
    }
}

function screenshake(_treme = 10)
{
    if (instance_exists(obj_screenshake))
    {
        with (obj_screenshake) 
        {
            if (_treme > treme)
            {
                treme = _treme
            }	
        }
    }
}