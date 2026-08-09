if (global.in_transition or global.pause or global.game_over or global.tela_power_up) exit


if (instance_exists(obj_player))
{
    ang -= 4
    x = obj_player.x + lengthdir_x(60, ang)
    y = obj_player.y + lengthdir_y(60, ang)
    
    if (ang < -359)
    {
        ds_list_clear(lista_atacados)
        ang = 0
    } 
    
    var _colisoes = ds_list_create()
    var _qtd = instance_place_list(x, y, obj_entidade, _colisoes, 0)
    for (var i = 0; i < _qtd; i++) 
    {
        // salvando o cara atual
        var _outro = _colisoes[| i]
      
        if (ds_list_find_index(lista_atacados, _outro) == -1)
        {
            ds_list_add(lista_atacados, _outro)
          
          
            _outro.toma_dano(dano, ["fisico"])
          
        }	
    }
  
    ds_list_destroy(_colisoes)
    
    show_debug_message(ang)
    
    
}
else 
{
    instance_destroy()	
}
