#region Variaveis

vida = 3

tempo_pisca = 10
timer_pisca = 0

tempo_choque = 20
timer_choque = 0

minha_colisao = instance_create_layer(x - sprite_width/2, y - 4, "Colisao", obj_item_colisao)

#endregion

#region Funções

toma_dano = function(_dano, _tipo)
{

    vida -= _dano
    timer_pisca = tempo_pisca
    
    if (vida <= 0)
    {
        instance_create_layer(x, y, "Chao", obj_poca_agua)
        instance_destroy(minha_colisao)
        instance_destroy()
    }
}


#endregion
