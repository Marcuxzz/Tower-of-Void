if (global.pause) exit;

#region mensagem no topo
// Faz a interpolação do alpha para piscar suavemente
if (mensagem_ativa) {
    alpha += piscar * alpha_direcao;
    if (alpha >= 1) {
        alpha = 1;
        alpha_direcao = -1;
    } else if (alpha <= 0) {
        alpha = 0;
        alpha_direcao = 1;
    }
}#endregion

