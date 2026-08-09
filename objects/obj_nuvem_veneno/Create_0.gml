#region Variáveis

image_alpha = .5

// controle
lista_atacados = ds_list_create()
vida = 60

#endregion

#region Funções

explosao = function()
{ 
   
    vida --
    
   var _colisoes = ds_list_create()
   var _qtd = instance_place_list(x, y, obj_inimigo, _colisoes, 0)
   
   for (var i = 0; i < _qtd; i++) 
   {
       // salvando o cara atual
       var _outro = _colisoes[| i]
       
       if (ds_list_find_index(lista_atacados, _outro) == -1)
       {
           ds_list_add(lista_atacados, _outro)
           
           
           _outro.efeito_veneno()
           
       }	
   }
   
   ds_list_destroy(_colisoes)
   
   
   if (vida <= 0)
   {
       instance_destroy()
   }
}

#endregion