#region Variáveis

// imagem
image_xscale = .1
image_yscale = image_xscale
image_alpha = .3

// controle
lista_atacados = ds_list_create()
dano = 1
tamanho = 2 + global.aumento_alcance_vento /2

toca_sfx(snd_wind, .2, 2)

#endregion

#region Funções

explosao = function()
{ 
   image_xscale += .3
   image_yscale = image_xscale
   
   
   if (image_xscale >= tamanho)
   {
       instance_destroy()
   }
}

#endregion