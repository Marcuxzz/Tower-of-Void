if (global.pause) exit;

#region mensagem no topo

// Ativa a mensagem e configura o alarme para 3 segundos (180 steps)
mensagem_ativa = true;
alpha = 1; // Começa com a mensagem visível
alarm[0] = 230; // 3 segundos 
#endregion

if (audio_play_sound(snd_floresta, 0, true)){

audio_stop_sound(snd_menu);

}