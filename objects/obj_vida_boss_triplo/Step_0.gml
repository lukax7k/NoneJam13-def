if (instance_exists(obj_anarquico_sombra))
{
   slime_vida = obj_anarquico_sombra.vida 
} 
else 
{
    slime_vida = 0	
}
if (instance_exists(obj_maquina_sombra)) 
{
    maquina_vida = obj_maquina_sombra.vida
}
else 
{
    maquina_vida = 0	
}
if (instance_exists(obj_goblin_louco_sombra)) 
{
    goblin_vida = obj_goblin_louco_sombra.vida
}
else 
{
    goblin_vida = 0	
}
    
vida = slime_vida + maquina_vida + goblin_vida

vida_feedback = approach(vida_feedback, vida, 12)

if (boss_1_derrotado and boss_2_derrotado and boss_3_derrotado)
{
    global.game_over = true
    global.player_win = true
}