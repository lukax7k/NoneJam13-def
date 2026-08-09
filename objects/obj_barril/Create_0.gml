#region Variaveis

vida = 3

tempo_pisca = 10
timer_pisca = 0

minha_colisao = instance_create_layer(x - sprite_width/2, y - 4, "Colisao", obj_item_colisao)

#endregion

#region Funções

toma_dano = function(_dano, _tipo)
{
    vida -= _dano
    timer_pisca = tempo_pisca
    
    if (vida <= 0)
    {
        cria_poca(_tipo)
    }
}

cria_poca = function(_tipo = "fisico")
{
    var _minha_poca = instance_create_layer(x, y + sprite_height/2, "Chao", obj_poca_oleo)
    
    if (array_contains(_tipo, "fogo"))
    {
        if (_minha_poca != noone)
        {
            _minha_poca.pega_fogo()
        }
        
    }
    
    instance_destroy(minha_colisao)
    instance_destroy()
}

#endregion
