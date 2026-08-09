y_original = y

meu_alpha = 0

desenha_fim_de_jogo = function()
{
    if (global.player_loose)
    {
        escreve_texto(fnt_texto, x, y_original - 80, "Fim de jogo", .5, .5, 0, meu_alpha)
    }
    else if (global.player_win)
    {
        escreve_texto(fnt_texto, x, y_original - 80, "Vitória", .5, .5, 0, meu_alpha)
    } 
    
}