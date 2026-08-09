image_xscale = 2.8

image_yscale = 0

meu_spr = spr_aumento_dano
meu_titulo = "Título"
meu_nivel = 0
meu_nivel_max = 1
meu_texto = "Aumenta o bônus do jogador e zas e zas e zaaas e zaaaaaas zaaaaaaaaaaaas zas zas"
meu_dinheiro_1 = "gold"
meu_dinheiro_2 = noone
meu_sprite_coin_1 = spr_gold
meu_sprite_coin_2 = noone
meu_custo_1 = 10
meu_custo_2 = 10


meu_alpha = 0

pega_sprite = function()
{
    if (meu_dinheiro_1 == "gold")
    {
        meu_sprite_coin_1 = spr_gold
    }
    else if (meu_dinheiro_1 == "slime")
    {
        meu_sprite_coin_1 = spr_slime_drop
    }
    else if (meu_dinheiro_1 == "bones")
    {
        meu_sprite_coin_1 = spr_bone_drop
    }
    else if (meu_dinheiro_1 == "claw")
    {
        meu_sprite_coin_1 = spr_claw_drop
    }
    else 
    {
        meu_sprite_coin_1 = noone
    }
    
    if (meu_dinheiro_2 == "gold")
    {
        meu_sprite_coin_2 = spr_gold
    }
    else if (meu_dinheiro_2 == "slime")
    {
        meu_sprite_coin_2 = spr_slime_drop
    }
    else if (meu_dinheiro_2 == "bones")
    {
        meu_sprite_coin_2 = spr_bone_drop
    }
    else if (meu_dinheiro_2 == "claw")
    {
        meu_sprite_coin_2 = spr_claw_drop
    }
    else 
    {
        meu_sprite_coin_2 = noone
    }
}