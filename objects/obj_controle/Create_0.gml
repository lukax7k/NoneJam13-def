layer_set_visible("ui_pause", 0)
layer_set_visible("ui_morte", 0)
layer_set_visible("ui_config", 0)
global.tela_power_up = false
global.mostra_saves = false


musica_atual = noone
modificador = 0
ang = 0

window_set_cursor(cr_none)

controla_fullscreen = function()
{
    var _fullscreen = window_get_fullscreen()

    if (keyboard_check_pressed(vk_f11))
    {
        window_set_fullscreen(!_fullscreen)
    }
}

if (room == rm_level_1 or room == rm_level_2 or room == rm_level_3 or room == rm_level_4)
{
    toca_musica_bg(snd_battle)
    musica_atual = snd_battle
}
else 
{
    toca_musica_bg(snd_menu)
    musica_atual = snd_menu	
}


pausa_jogo = function()
{
    
    if (room != rm_mapa and room != rm_skilltree and room != rm_level_1 and room != rm_level_2 and room != rm_level_3 and room != rm_level_4) exit
    if (keyboard_check_pressed(vk_escape))
    {
        
        
        global.pause = !global.pause
        layer_set_visible("ui_pause", global.pause)
        
        if (layer_get_visible("ui_config"))
        {
            layer_set_visible("ui_config", 0)
        }
        
        if (instance_exists(obj_ui_fundo))
        {
            with (obj_ui_fundo) 
            {
                meu_alpha = 0
                y_original = y - 10	
            }
        }
        
        if (instance_exists(obj_button))
        {
            obj_button.reseta_sair()
            obj_button.meu_alpha = 0
            
            with (obj_button) 
            {
                y_original = y - 10	
            }
            
        }
    }
}