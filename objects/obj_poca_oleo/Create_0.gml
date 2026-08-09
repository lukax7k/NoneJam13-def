#region Variaveis

// controle
meu_acel = .05
tamanho = 1
meu_fogo = noone

#endregion

#region Funções

pega_fogo = function()
{
    meu_fogo = instance_create_layer(x, y, "Tiro", obj_fogo)
    
    meu_fogo.pai = id
}

encolhendo = function()
{
    tamanho -= 0.0001

    image_xscale = tamanho
    image_yscale = tamanho
    
    if (tamanho <= .5)
    {
        image_alpha -= 0.01
        
        if(image_alpha <= .2)
        {
            instance_destroy()
        }
        
    }
}

#endregion

