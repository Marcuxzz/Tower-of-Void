//if (global.pause) exit;

audio_stop_sound(snd_menu)

#region mensagem no topo
// Inicializa as variáveis de controle
mensagem_ativa = true;
alpha = 0;
alpha_direcao = 1; // 1 para aumentar, -1 para diminuir
piscar = 0.05; // Velocidade de mudança de alpha
#endregion 
