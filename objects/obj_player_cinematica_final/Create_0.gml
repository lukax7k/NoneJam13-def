caixa_h_atual = 0
text_index = 0
botoes_criados = false

sub = 0

troca_sprite = function(_sprite = spr_player)
{
    if (sprite_index != _sprite)
    {
        sprite_index = _sprite; 
        
        image_index = 0;
    }
}


primeiro_movimento = function()
{
    if (x < 128)
    {
        troca_sprite(spr_player_walk)
        x += 1
    }
    else 
    {
        troca_sprite(spr_player_costas)	
    }
}