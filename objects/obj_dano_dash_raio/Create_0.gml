#region Variáveis


// controle
lista_atacados = ds_list_create()
dano = 1 + global.aumento_dano_dash

#endregion

toca_sfx(snd_shock, .2, 4)

#region Funções

causa_dano = function()
{ 
   
   var _colisoes = ds_list_create()
   var _qtd = instance_place_list(x, y, obj_entidade, _colisoes, 0)
   
   for (var i = 0; i < _qtd; i++) 
   {
       // salvando o cara atual
       var _outro = _colisoes[| i]
       
       if (ds_list_find_index(lista_atacados, _outro) == -1)
       {
           ds_list_add(lista_atacados, _outro)
           
           
           
           _outro.toma_dano(dano, ["raio"])
           
       }	
   }
   
   ds_list_destroy(_colisoes)
   
   
   if (image_xscale >= 1.5)
   {
       instance_destroy()
   }
}

#endregion