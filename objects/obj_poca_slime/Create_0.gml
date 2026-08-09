#region Variáveis

// movimento
meu_acel = .2

// controle
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
    tamanho -= 0.0005

    image_xscale = tamanho
    image_yscale = tamanho
    
    if (tamanho <= .5)
    {
        image_alpha -= 0.01
        
        if(image_alpha <= .2)
        {
            if (meu_fogo)
            {
               instance_destroy(meu_fogo) 
            }
            
            instance_destroy()
        }
        
    }
}

#endregion
