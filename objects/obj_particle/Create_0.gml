
// iniciando a layer do sistema de particulas
ps_sparks = part_system_create_layer("Instances", 0)

// criando o sistema de particula de definindo:
part_sparkle = part_type_create()
// sprite, animação, esticar e aleatoriedade
part_type_sprite(part_sparkle, spr_particle, 1, 0, 1)
// tamanho minimo, maximo, aumentando e frequencia
part_type_size(part_sparkle, 0.8, 1.5, 0, 0)

// cor inicial, intermediaria e final
part_type_colour3(part_sparkle, c_navy, c_blue, c_navy)

// alpha inicial, intermediario e final
part_type_alpha3(part_sparkle, 0.01, 0.7, 0.01)
// vida minima e maxima
part_type_life(part_sparkle, 120, 180)

// direção minima, maxima, aumento e frequencia
part_type_direction(part_sparkle, 280, 350, 0, 0)
// velocidade minima, maxima, aumento e frequencia
part_type_speed(part_sparkle, 0.05, 0.1, 0, 0)

// setando o alarme que cria as particulas
alarm[0] = 40