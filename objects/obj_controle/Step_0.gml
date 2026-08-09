if (global.in_transition or global.game_over) exit

pausa_jogo()
controla_fullscreen()

modificador = musica_atual == snd_menu ? 4 : 5

audio_sound_gain(musica_atual, global.musica / modificador)