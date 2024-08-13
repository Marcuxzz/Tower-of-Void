if (global.pause)
{
	image_speed = 0;
	exit;
}
//mudando a direcao da movimentacao
if place_meeting(x,y, obj_parede){
	if direc == 0{
		direc = 1;
	}else if direc == 1{
		direc = 0;
	}
}
//andando para direita
if direc == 0{
	sprite_index = spr_esqueleto;
	x += veloc;
}//andando para esquerda
else if direc == 1{
	sprite_index = spr_esqueleto;
	x -= veloc;
}//se der problema travando na parede ou bugando é a colisao da sprite




