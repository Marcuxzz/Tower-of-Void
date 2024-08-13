/////Evento Create
if(!audio_is_playing(snd_menu)){ //se nao estiver tocando
	
	global.audio_menu = audio_play_sound(snd_menu, 3, true); // toque.
}



/*
options = ["menu"];
op_max = array_length(options);
select = 0;
esc = 1;





global.game_state = "jogando";  // Estado inicial do jogo
global.pause = false;           // O jogo começa despausado

//instance_activate_all();  // Reativa todas as instâncias caso estejam desativadas

