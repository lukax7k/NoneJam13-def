
image_xscale = -1

troca_sprite = function(_sprite = spr_player)
{
    if (sprite_index != _sprite)
    {
        sprite_index = _sprite; 
        
        image_index = 0;
    }
}