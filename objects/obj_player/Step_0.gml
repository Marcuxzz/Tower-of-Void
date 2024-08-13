
if (global.pause)
{
	image_speed = 0;
	exit;
}
image_speed = 1;

#region CONTROLES

// Variável de controle de pulo
pular = keyboard_check(ord("W")); // Pular

// Verifica se a tecla A foi pressionada
var _esquerda = keyboard_check_pressed(ord("A"));

// Verifica se a tecla D foi pressionada
var _direita = keyboard_check_pressed(ord("D"));

// Atualiza a posição do player

switch (estado) { // Mudando os estados do player
    case "parado": { // Estado parado
        // Verifica colisões com inimigos e aplica dano
        var inimigo = instance_place(x + 5, y + 5, obj_slime);
        if (inimigo == noone) inimigo = instance_place(x + 5, y + 5, obj_dragao);
        if (inimigo == noone) inimigo = instance_place(x + 5, y + 5, obj_zumbi);
        if (inimigo == noone) inimigo = instance_place(x + 5, y + 5, obj_skeletro);
        if (inimigo == noone) inimigo = instance_place(x + 5, y + 5, obj_fantasma);
        if (inimigo != noone) {
            if (alarm[0] <= 0) {
                global.vida -= inimigo.dano; // Aplica o dano do inimigo
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }

        if (_direita) { // Se eu apertar para a direita
            if (!place_meeting(x + 1, y, obj_parede)) { // Se eu não estiver colidindo com a parede
                hspd = 1; // Ando para a direita
                estado = "andando_direita";
            }
        }

        if (_esquerda) { // Mesma coisa só que para a esquerda
            if (!place_meeting(x - 1, y, obj_parede)) {
                hspd = -1;
                estado = "andando_esquerda";
            }
        }
    } break;

    case "andando_direita": { // Estado andando para a direita
        // Atacar encostando
        var inimigo = instance_place(x + 30, y + 5, obj_slime);
        if (inimigo == noone) inimigo = instance_place(x + 30, y + 5, obj_dragao);
        if (inimigo == noone) inimigo = instance_place(x + 30, y + 5, obj_zumbi);
        if (inimigo == noone) inimigo = instance_place(x + 30, y + 5, obj_skeletro);
        if (inimigo == noone) inimigo = instance_place(x + 30, y + 5, obj_fantasma);
        if (inimigo != noone) {
            if (inimigo.vida > 0) {
                inimigo.vida -= 1;
                if (inimigo.vida == 0) {
                    // Destroi o inimigo específico
                    instance_destroy(inimigo);
                }
            }
        }

        inimigo = instance_place(x - 20, y - 5, obj_slime);
        if (inimigo == noone) inimigo = instance_place(x - 20, y - 5, obj_dragao);
        if (inimigo == noone) inimigo = instance_place(x - 20, y - 5, obj_zumbi);
        if (inimigo == noone) inimigo = instance_place(x - 20, y - 5, obj_skeletro);
        if (inimigo == noone) inimigo = instance_place(x - 20, y - 5, obj_fantasma);
        if (inimigo != noone) { // Se o inimigo me pegar por trás
            if (alarm[0] <= 0) {
                global.vida -= inimigo.dano;
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }

        if (_esquerda) { //se eu apertar para mudar de direcao
            hspd = -1; //ando para a esquerda
            estado = "andando_esquerda";
        }
    } break;

    case "andando_esquerda": { //estado andando para a esquerda
        //atacar encostando
        var inimigo = instance_place(x - 30, y + 5, obj_slime);
        if (inimigo == noone) inimigo = instance_place(x - 30, y + 5, obj_dragao);
        if (inimigo == noone) inimigo = instance_place(x - 30, y + 5, obj_zumbi);
        if (inimigo == noone) inimigo = instance_place(x - 30, y + 5, obj_skeletro);
        if (inimigo == noone) inimigo = instance_place(x - 30, y + 5, obj_fantasma);
        if (inimigo != noone) {
            if (inimigo.vida > 0) {
                inimigo.vida -= 1;
                if (inimigo.vida == 0) {
                    //destroi o inimigo específico
                    instance_destroy(inimigo);
                }
            }
        }

        inimigo = instance_place(x + 20, y - 5, obj_slime);
        if (inimigo == noone) inimigo = instance_place(x + 20, y - 5, obj_dragao);
        if (inimigo == noone) inimigo = instance_place(x + 20, y - 5, obj_zumbi);
        if (inimigo == noone) inimigo = instance_place(x + 20, y - 5, obj_skeletro);
        if (inimigo == noone) inimigo = instance_place(x + 20, y - 5, obj_fantasma);
        if (inimigo != noone) {
            if (alarm[0] <= 0) {
                global.vida -= inimigo.dano;
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }
        if (_direita) {
            hspd = 1;
            estado = "andando_direita";
        }
    } break;

    case "pulando": { // Estado pulando
        var inimigo = instance_place(x, y, obj_slime);
        if (inimigo == noone) inimigo = instance_place(x, y, obj_dragao);
        if (inimigo == noone) inimigo = instance_place(x, y, obj_zumbi);
        if (inimigo == noone) inimigo = instance_place(x, y, obj_skeletro);
        if (inimigo == noone) inimigo = instance_place(x, y, obj_fantasma);
        if (inimigo != noone) { // Se encostar em um inimigo enquanto pulo, tomo dano
            if (alarm[0] <= 0) {
                global.vida -= inimigo.dano;
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }
        if (hspd == 1) { // Se eu pulei enquanto andava para a direita, e já estou encostando no chão
            estado = "andando_direita"; // Sigo no estado da direita
        }
        if (hspd == -1) { // Mesma coisa só que o contrário
            estado = "andando_esquerda";
        }
        if (hspd == 0) { // Colidi com a parede durante o pulo, então fico parado
            estado = "parado";
        }
    } break;
}


/*
#region CONTROLES

// Variável de controle de pulo
pular = keyboard_check_pressed(ord("W")); // Pular

// Verifica se a tecla A foi pressionada
var _esquerda = keyboard_check_pressed(ord("A"));

// Verifica se a tecla D foi pressionada
var _direita = keyboard_check_pressed(ord("D"));

// Atualiza a posição do player

switch (estado) { // Mudando os estados do player
    case "parado": { // Estado parado
        // Verifica colisões com inimigos e aplica dano
        var inimigo = instance_place(x + 5, y + 5, obj_slime);
        if (inimigo == noone) {
            inimigo = instance_place(x + 5, y + 5, obj_dragao);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x + 5, y + 5, obj_zumbi);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x + 5, y + 5, obj_skeletro);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x + 5, y + 5, obj_fantasma);
        }
        if (inimigo != noone) {
            if (alarm[0] <= 0) {
                global.vida -= inimigo.dano; // Aplica o dano do inimigo
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }

        if (_direita) { // Se eu apertar para a direita
            if (!place_meeting(x + hspd, y, obj_parede)) { // Se eu não estiver colidindo com a parede
                hspd = 1; // Ando para a direita
				
                estado = "andando_direita";
            }
        }

        if (_esquerda) { // Mesma coisa só que para a esquerda
            if (!place_meeting(x - hspd, y, obj_parede)) {
                hspd = -1;
	
                estado = "andando_esquerda";
            }
        }
    } break;

    case "andando_direita": { // Estado andando para a direita
        // Atacar encostando
        var inimigo = instance_place(x + 30, y + 5, obj_slime);
        if (inimigo == noone) {
            inimigo = instance_place(x + 30, y + 5, obj_dragao);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x + 30, y + 5, obj_zumbi);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x + 30, y + 5, obj_skeletro);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x + 30, y + 5, obj_fantasma);
        }
        if (inimigo != noone) {
            if (inimigo.vida > 0) {
                inimigo.vida -= 1;
                if (inimigo.vida == 0) {
                    // Destroi o inimigo específico
                    instance_destroy(inimigo);
                }
            }
        }


        if (instance_place(x - 20, y - 5, obj_slime) || instance_place(x - 20, y - 5, obj_dragao) || instance_place(x - 20, y - 5, obj_zumbi) || instance_place(x - 20, y - 5, obj_skeletro) || instance_place(x - 20, y - 5, obj_fantasma)) { // Se o inimigo me pegar por trás
            if (alarm[0] <= 0) {
                global.vida -= 1;
                alarm[0] = 30;  //1 segundo sem tomar dano
            }
        }

        if (_esquerda) { //se eu apertar para mudar de direcao
            hspd = -1; //ando para a esquerda
		
            estado = "andando_esquerda";
        }
    } break;

    case "andando_esquerda": { //estado andando para a esquerda
        //atacar encostando
		
        var inimigo = instance_place(x - 30, y + 5, obj_slime);
        if (inimigo == noone) {
            inimigo = instance_place(x - 30, y + 5, obj_dragao);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x - 30, y + 5, obj_zumbi);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x - 30, y + 5, obj_skeletro);
        }
        if (inimigo == noone) {
            inimigo = instance_place(x - 30, y + 5, obj_fantasma);
        }
        if (inimigo != noone) {
            if (inimigo.vida > 0) {
                inimigo.vida -= 1;
                if (inimigo.vida == 0) {
                    //destroi o inimigo específico
                    instance_destroy(inimigo);
                }
            }
        }

        if (instance_place(x + 20, y - 5, obj_slime) || instance_place(x + 20, y - 5, obj_dragao) || instance_place(x + 20, y - 5, obj_zumbi) || instance_place(x + 20, y - 5, obj_skeletro) || instance_place(x + 20, y - 5, obj_fantasma)) {
            if (alarm[0] <= 0) {
                global.vida -= 1;
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }
        if (_direita) {
            hspd = 1;
		
            estado = "andando_direita";
        }
    } break;

    case "pulando": { // Estado pulando
        if (place_meeting(x, y, obj_slime) || place_meeting(x, y, obj_dragao) || place_meeting(x, y, obj_zumbi) || place_meeting(x, y, obj_skeletro) || place_meeting(x, y, obj_fantasma)) { // Se encostar em um inimigo enquanto pulo, tomo dano
            if (alarm[0] <= 0) {
                global.vida -= 1;
                alarm[0] = 30;  // 1 segundo sem tomar dano
            }
        }
        if (hspd == 1) { // Se eu pulei enquanto andava para a direita, e já estou encostando no chão
            estado = "andando_direita"; // Sigo no estado da direita
        }
        if (hspd == -1) { // Mesma coisa só que o contrário
            estado = "andando_esquerda";
        }
        if (hspd == 0) { // Colidi com a parede durante o pulo, então fico parado
            estado = "parado";
        }
    } break;
}
*/

/*
//movimento do personagem 
#region CONTROLES

pular = keyboard_check(ord("W"));//pular

//verifica se a tecla A foi pressionada
var _esquerda = keyboard_check_pressed(ord("A"))

//verifica se a tecla D foi pressionada
var _direita = keyboard_check_pressed(ord("D"))

//atualiza a posicao do player

switch(estado) //mudando os estados do player
{
	case "parado": //estado parado
	{
		if(instance_place(x + 5, y + 5, obj_slime)) //se um inimigo encostar em mim, tomo dano
		{
			if alarm[0] <= 0
			{
				global.vida -= 1;
				alarm[0] = 30;  //1 segundo sem tomar dano
			}
		}		

		if(_direita) //se eu apertar para a direita
		{
			if(!place_meeting(x + hspd, y, obj_parede)) //se eu não estiver colidindo com a parede
			{
				hspd = 1; //ando para a direita
				estado = "andando_direita";
			}
		}
		
		if(_esquerda) //mesma coisa só que para a esquerda
		{
			if(!place_meeting(x - hspd, y, obj_parede))
			{
				hspd = -1;	
				estado = "andando_esquerda";
			}
		}
	}
	break;
	
	case "andando_direita": //estado andando para a direita
	{
		//atacar encostando
		var inimigo = instance_place(x + 30, y + 5, obj_slime); //se o inimigo estiver à minha direita

		if (inimigo != noone) {
		    if (inimigo.vida > 0) {
		        inimigo.vida -= 1;
		        if (inimigo.vida == 0) {
		            //destroi o inimigo específico
		            instance_destroy(inimigo);
		        }
		    }
		}
		
		if(instance_place(x - 20, y - 5, obj_slime)) //se o inimigo me pegar por trás (la ele)
		{
			if alarm[0] <= 0
			{
				global.vida -= 1;
				alarm[0] = 30;  //1 segundo sem tomar dano
			}
		}
		
		if(_esquerda) //se eu apertar para mudar de direção
		{
			hspd = -1;	//ando para a direita
			estado = "andando_esquerda";
		}
	}
	break;
	
	case "andando_esquerda": //estado andando para a esquerda é a mesma coisa do direita só q o contrário
	{
		//atacar encostando
		var inimigo = instance_place(x - 30, y + 5, obj_slime);

		if (inimigo != noone) {
		    if (inimigo.vida > 0) {
		        inimigo.vida -= 1;
		        if (inimigo.vida == 0) {
		            //destroi o inimigo específico
		            instance_destroy(inimigo);
		        }
		    }
		}
		
		if(instance_place(x + 20, y - 5, obj_slime))
		{
			if alarm[0] <= 0
			{
				global.vida -= 1;
				alarm[0] = 30;  //1 segundo sem tomar dano
			}
		}
		if(_direita)
		{
			hspd = 1;	
			estado = "andando_direita";
		}
	}
	break;
	
	case "pulando": //estado pulando
	{
		if(instance_place(x, y, obj_slime)) //se encostar em um inimigo enquanto pulo, tomo dano
		{
			if alarm[0] <= 0
			{
				global.vida -= 1;
				alarm[0] = 30;  //1 segundo sem tomar dano
			}
		}
		if(hspd = 1) //se eu pulei enquanto andava para a direita, e já estou encostando no chão
		{
			estado = "andando_direita"; //sigo no estado da direita
		}
		if(hspd = -1) //mesma coisa só que o contrário
		{
			estado = "andando_esquerda";
		}
		if(hspd = 0) //colidi com a parede durante o pulo, então fico parado
		{
			estado = "parado";
		}
	}
	break;
}*/
#endregion

x += spd * hspd;
#region MOVIMENTACAO

vspd = vspd + grv;

//colisao horizontal
if place_meeting(x+hspd, y, obj_parede){
	while(!place_meeting(x+sign(hspd),y,obj_parede)){
		x += x + sign(hspd);
	}
hspd = 0;
estado = "parado";
}
x = x + hspd;

//colisao vertical
if place_meeting(x, y+vspd, obj_chao){
	while(!place_meeting(x,y+sign(vspd),obj_chao)){
		y = y + sign(vspd);
	}
vspd = 0;
}
y = y + vspd;


//pular
if place_meeting(x, y+1, obj_chao) and pular{
	vspd -= 20; //aumentar ou diminuir o pulo
	estado = "pulando"; //estado pulando
}

#endregion


#region troca de sprites

if (hspd != 0) image_xscale = sign(hspd); //se a velocidade horizontal for diferente de zero, vai trocar o lado do personagem

if (!place_meeting(x, y+1, obj_chao)){
	sprite_index = spr_pulando;
	if (sign(vspd) > 0.5) sprite_index = spr_caindo; else sprite_index = spr_pulando;
} else{
	if (hspd != 0){
		sprite_index = spr_player_andando_esquerda; //esquerda
	}
}
if hspd = 0{
	if place_meeting(x, y+1, obj_chao){
		sprite_index = spr_parado; 
	}
}
if hspd != 0{
	if place_meeting(x, y+1, obj_chao){
		sprite_index = spr_player_andando;  //direita
	}
}

#endregion
 /*
#region ENCOSTAR NA PAREDE E MUDAR LADO (fiz 100% sozinho que orgulho)

direction = 0; //1 direita, -1 esquerda
x += spd * direction; //se der problema, mudar para hspd ou se matar

//colisao com a parede
if (place_meeting(x, y, obj_parede)) {
    //se colidir com a parede, inverte a direcao
    image_xscale *= -1;
    
    //virar a sprite de acordo com a direcao
    if (direction == 1) {
        sprite_index = spr_parado; //direita
    } else if (direction == -1) {
        sprite_index = spr_parado_esquerda; //esquerda
    }
}
//desenhar sprite
draw_self();*/









//atualizacao da posição do objeto
x += hspd * direction;

//colisao com a parede
if (place_meeting(x, y, obj_parede)) {
    //se colidir com a parede, inverte a direção
    image_xscale *= -1;
    
    //virar a sprite de acordo com a direcao
    if (direction == 1) {
        sprite_index = spr_parado; //direita
    } else if (direction == -1) {
        sprite_index = spr_parado; //esquerda
    }
}

//desenho do objeto
draw_self();


#endregion
 

#region atacar inimigo

//x + (hspd * direction) = matar inimigo ou player morrer


 /* //isso aq pode apagar, ele tem q tomar dando colidindo de frente
//atacando
if (mouse_check_button(mb_left)){
	 sprite_index = slime; //sprite atacando
	 if (image_index >= image_number - 1){
		 show_debug_message("aa")
	 }
	
 }
 */
 
 #endregion
 
 
 
 #region MORRER SE VIDA FOR MENOR QUE 1
 //resetar o jogo se estiver se a vida for menor que 1
if global.vida < 1 {
	global.pontos = 0;
	room_goto(rm_menu);
}
#endregion

#region EFEITO DE PISCAR PLAYER(EFEITO DE DANO)
if alarm[0] > 0{
	if image_alpha >= 1{
	alfa_hit = -0.05;
	}else if image_alpha <= 0{
		alfa_hit = 0.05;
	}
	image_alpha += alfa_hit;
}else {
	image_alpha = 1;
}
#endregion









/*
//andar infinitamente(nao funcionakkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

//movimentacao
//mudando a direcao da movimentacao
if place_meeting(x,y, obj_parede){
	if hspd == 0{
		hspd = 1;
	}else if hspd == 1{
		hspd = 0;
	}
}
//andando para direita
if hspd == 0{
	sprite_index = spr_andando_direita;
	x += spd;
}//andando para esquerda
else if hspd == 0{
	sprite_index = spr_andando_esquerda
	x -= spd;
}//se der problema travando na parede ou bugando é a colisao da sprite

*/

// Lista de todos os tipos de inimigos
//var inimigos = [obj_slime, obj_fantasma, obj_zumbi, obj_skeletro, obj_dragao];
 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
// Inicializa a variável para armazenar o inimigo detectado
var inimigo_detectado = noone;

// Verifica colisões com todos os inimigos
for (var i = 0; i < array_length(tipo_inimigo); i++) {
    
	  var inimigo_atual = instance_place(x + 30 and x - 30, y, tipo_inimigo[i]);
    if (inimigo_atual != noone) {
        inimigo_detectado = inimigo_atual;
        break; // Sai do loop assim que um inimigo é encontrado
    }
}

// Se um inimigo foi detectado e o tempo de espera do alarme expirou
if (inimigo_detectado != noone) {
    if (alarm[0] <= 0) {
        global.vida -= inimigo_detectado.dano; // Aplica o dano do inimigo
        alarm[0] = 30;  // 1 segundo sem tomar dano
    }
}


