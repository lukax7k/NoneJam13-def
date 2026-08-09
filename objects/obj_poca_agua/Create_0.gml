#region Variaveis

// controle
meu_acel = .05
tamanho = 2

lista_atacados = ds_list_create()
dano = 1

tempo_eletrizada = 60
timer_eletrizada = 0

image_alpha = .5


#endregion

#region Funções


encolhendo = function()
{
    tamanho -= 0.0002

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
           
        if (instance_exists(_outro))
        {
           _outro.toma_dano(dano, ["raio"]) 
        }
           
           
       }	
   }
   
   ds_list_destroy(_colisoes)
   
}

#endregion

