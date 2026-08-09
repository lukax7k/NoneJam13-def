if (global.in_transition) exit
    
if (meu_alpha < 1)
{
    meu_alpha = lerp(meu_alpha, 1, .05)
}

if (y_original < y)
{
    y_original += .5
}

