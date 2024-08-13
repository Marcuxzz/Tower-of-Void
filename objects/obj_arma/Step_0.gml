if (global.pause) exit;

/*

x = obj_player.x + 20 //posicao da arma
y = obj_player.y - 40 // posicao da arma

if (obj_player.hspd <= 0){
	image_xscale = -1;  // virar esquerda
    x = obj_player.x - 20 //posicao da arma
}else{
	
	image_xscale = 1;  // virar direita
}


  if (direction == 1) {
       image_xscale = 1;  //direita
    } else if (direction == -1) {
       image_xscale = -1;  //esquerda
    }
	*/
	
	
	



	
// Define a posição vertical da arma
y = obj_player.y - 40;

// Ajusta a posição horizontal da arma e a orientação da imagem
if (instance_exists(obj_player)) {
if (obj_player.hspd < 0) {
    // Jogador movendo para a esquerda
    image_xscale = -1;  // Virar arma para a esquerda
    x = obj_player.x - 20; // Ajusta a posição horizontal para a esquerda
    last_direction = -1; // Salva a última direção como esquerda
} else if (obj_player.hspd > 0) {
    // Jogador movendo para a direita
    image_xscale = 1;   // Virar arma para a direita
    x = obj_player.x + 20; // Ajusta a posição horizontal para a direita
    last_direction = 1; // Salva a última direção como direita
} else {
    // Jogador parado
    if (last_direction == -1) {
        // Se a última direção foi para a esquerda
        image_xscale = 1;  // Virar arma para a direita
        x = obj_player.x + 20; // Ajusta a posição horizontal para a direita
    } else if (last_direction == 1) {
        // Se a última direção foi para a direita
        image_xscale = -1;  // Virar arma para a esquerda
        x = obj_player.x - 20; // Ajusta a posição horizontal para a esquerda
    }
}
}
