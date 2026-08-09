if (global.pause or global.tela_power_up or global.in_transition) 
{
    speed = 0
    exit
}
else 
{
    direction += lado
    speed = 5
}

ajusta_depth()
destruindo()