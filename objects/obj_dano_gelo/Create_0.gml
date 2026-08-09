#region Variáveis

// imagem
image_xscale = .1
image_yscale = image_xscale

// controle
lista_atacados = ds_list_create()
dano = 1
tamanho = 1 + global.aumento_alcance_gelo

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
           
           
           
           _outro.efeito_gelo()
           
       }	
   }
   
   ds_list_destroy(_colisoes)
   
   
   if (image_xscale >= tamanho)
   {
       instance_destroy()
   }
}

#endregion