options = ["fullscreen","audios","back"];
op_max = array_length(options);
select = 0;
esc = 1;

/////Evento Create
if(!audio_is_playing(snd_menu)){
	
	global.audio_menu = audio_play_sound(snd_menu, 3, true);
}


/* parar o audio(mas acho q coloca no obj ou room do que quero parar
audio_stop_sound(global.audio_menu)

*/

audio_max = 1;
audio_min = 0;
audio_set = 0.8;