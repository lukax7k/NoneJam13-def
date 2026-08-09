// Inherit the parent event
if (global.pause or global.tela_power_up or global.in_transition) exit
event_inherited();

atirando()
vida_feedback = approach(vida_feedback, vida, 2)