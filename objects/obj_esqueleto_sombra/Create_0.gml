// Inherit the parent event
event_inherited();

vida_max = 15 + global.wave * 5
vida = vida_max
dano = 4
meu_max_vel = random_range(2.2, 2.4) + global.wave / 7
max_vel = meu_max_vel

meu_drop = [{drop : "gold", chance : 50, n_min : 15, n_max : 22}, {drop : "bones", chance : 40, n_min : 12, n_max : 18}]