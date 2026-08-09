#region Variáveis

// imagem
image_xscale = .1
image_yscale = image_xscale
image_alpha = .3

// controle
lista_atacados = ds_list_create()
dano = 1 + global.aumento_dano_fogo * 2
tamanho = 1.5 + global.aumento_alcance_fogo /2

toca_sfx(snd_explosao, .2, 3)

#endregion

#region Funções

explosao = function()
{ 
   image_xscale += .3
   image_yscale = image_xscale
   
   var _colisoes = ds_list_create()
   var _qtd = instance_place_list(x, y, obj_inimigo, _colisoes, 0)
   
   for (var i = 0; i < _qtd; i++) 
   {
       // salvando o cara atual
       var _outro = _colisoes[| i]
       
       if (ds_list_find_index(lista_atacados, _outro) == -1)
       {
           ds_list_add(lista_atacados, _outro)
           
           
           _outro.toma_dano(dano, ["fogo"])
           
       }	
   }
   
   ds_list_destroy(_colisoes)
   
   
   if (image_xscale >= tamanho)
   {
       instance_destroy()
   }
}

#endregion