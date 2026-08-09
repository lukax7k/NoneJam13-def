#region Variaveis

// atributos
vida_max = 1
vida = vida_max

// movimento
velh = 0
velv = 0
max_vel = 1
meu_acel = .3
meu_max_vel = 1

// controle
colisoes = [obj_chao, obj_item_colisao]
pega_fogo = true

// timers
tempo_pisca = 10
timer_pisca = 0
tempo_fogo = 60
timer_fogo = 0

#endregion

#region Funções

// ajuste de escala horizontal
ajusta_escala = function()
{
    if (velh > 0)
    {
        image_xscale = 1
    }
    else if (velh < 0)
    {
        image_xscale = -1
    }
}

// recebe dano
toma_dano = function(_dano = 1)
{
    timer_pisca = tempo_pisca
    
    vida -= _dano
    
    if (vida <= 0)
    {
        instance_destroy()
    }
}

// sendo empurrado


// cooldown para pegar fogo
toma_dano_fogo = function()
{
    if (timer_fogo > 0)
    {
        timer_fogo --
    }
    else 
    {
        pega_fogo = true
    }
}

// checando o piso
checa_piso = function()
{
    var _slime = instance_place(x, y, obj_poca_slime)
    var _oleo = instance_place(x, y, obj_poca_oleo)
    
    var _piso = "nada"
    
    if (_slime)
    {
        _piso = "slime"
    }
    else if (_oleo)
    {
        _piso = "oleo"
    }
    else 
    {
    	_piso = "nada"
    }
    
    switch (_piso) 
    {
        case "nada":
        {
            acel = meu_acel
            max_vel = meu_max_vel
        }	
        break
    
        case "slime":
        {
            acel = _slime.meu_acel
            max_vel = meu_max_vel/2
        }	
        break
    
        case "oleo":
        {
            acel = _oleo.meu_acel
            max_vel = meu_max_vel * 1.5
        }	
        break
    }
}

#endregion


