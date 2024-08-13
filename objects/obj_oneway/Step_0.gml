//verificando se o player existe
if(instance_exists(obj_player)){
	if(bbox_bottom >= obj_player.bbox_bottom){//checando se o player esta em cima da plataforma ou embaixo
	
		sprite_index = spr_oneway; //se estiver embaixo da pra subir
	}else{
		sprite_index = -1; //pra permitir subir de novo
	}
	//pra fazer o boneco descer
	with(obj_player){
		var tecla_baixo = keyboard_check(ord("S")); //se der ruim coloca o pressed
		if (tecla_baixo){
			
			other.sprite_index = -1; 
		}
	}
}