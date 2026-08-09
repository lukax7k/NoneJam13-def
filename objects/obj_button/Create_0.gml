// efeitos
esc_x_original = image_xscale
esc_y_original = image_yscale
xscale = esc_x_original
yscale = esc_y_original
mouse_on = false

y_original = y

meu_alpha = 0


reseta_sair = function()
{
    if (botao_sair)
    {
        if (room = rm_mapa or room = rm_skilltree or rm_menu) opcao = "Salvar e sair" 
        else opcao = "Sair da fase"
    }
}