// Inherit the parent event
event_inherited();

minha_poca = obj_poca_slime_sombra

vida_max = 15 + global.wave * 5
vida = vida_max
dano = 4
meu_max_vel = random_range(2.1, 2.5) + global.wave / 7
max_vel = meu_max_vel

meu_drop = [{drop : "gold", chance : 50, n_min : 15, n_max : 22}, {drop : "slime", chance : 40, n_min : 12, n_max : 18}]

