

if (global.pause or global.tela_power_up or global.in_transition) exit
controla_level()

if (instance_exists(obj_player))
{
    with (obj_player) 
    {
        vida_feedback = approach(vida_feedback, vida, .08)
    }
}