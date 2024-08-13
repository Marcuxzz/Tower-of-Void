
/*
function snd_menu_script(){
	
	var _keys = keyboard_check(vk_left) - keyboard_check(vk_right);
	

if(_keys != 0 ){
	audio_set = clamp(audio_set+(0.05*_keys), audio_percent_min, audio_percent)
	//audio_set = clamp(audio_set++, audio_percent_min, audio_percent);	
}

if(audio_sound_is_playable(global.menusound)){
	
	audio_sound_gain(global.menusound, audio_set, 0);
	
}








}
*/

///// função de para colocar em algum script

function scr_audio_set(){

    var _keys = keyboard_check(ord("D"))-keyboard_check(ord("A"));

    audio_set = clamp(audio_set+(_keys*0.01),audio_min,audio_max);

        if(audio_is_playing(global.audio_menu)){
        audio_sound_gain(global.audio_menu,audio_set,0);
    }

}
