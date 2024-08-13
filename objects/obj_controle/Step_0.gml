
if (global.pause) exit;





#region INIMIGO
#region MUNDO 1
if (room == rm_mundo1){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo


temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo1 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo1);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	  
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo1 -= 1;

        } 
    }
}

  }
  
if (room == rm_mundo1level2){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo 10

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo1_level2 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo1_level2);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);

		 // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo1_level2 -= 1;

        } 
    }
}

  }
  
  
  if (room == rm_mundo1level4){
var _margem = 200;
var max_inimigos_por_ciclo = 15; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo1_level4 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo1_level4);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);

		 // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo1_level4 -= 1;

        } 
    }
}

  }
#endregion

#region MUNDO 2
if (room == rm_mundo2){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo2 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo2);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
          global.total_inimigos_mundo2 -= 1;

        } 
    }
}

  }
  
if (room == rm_mundo2level2){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo2_level2 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo),global.total_inimigos_mundo2_level2);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo2_level2 -= 1;

        } 
    }
}

  }
  
  
  
  if (room == rm_mundo2level4){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo2_level4 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo),global.total_inimigos_mundo2_level4);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo2_level4 -= 1;

        } 
    }
}

  }
#endregion

#region MUNDO 3

if (room == rm_mundo3){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo3 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo3);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo3 -= 1;

        } 
    }
}

  }
  
if (room == rm_mundo3level2){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo3_level2 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo),global.total_inimigos_mundo3_level2);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
          global.total_inimigos_mundo3_level2 -= 1;

        } 
    }
}

  }
  
  
  if (room == rm_mundo3level4){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo3_level4 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo),global.total_inimigos_mundo3_level4);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
          global.total_inimigos_mundo3_level4 -= 1;

        } 
    }
}

  }

#endregion

#region MUNDO 4

if (room == rm_mundo4){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo4 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo),global.total_inimigos_mundo4);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
          global.total_inimigos_mundo4 -= 1;

        } 
    }
}

  }
  
if (room == rm_mundo4level2){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo4_level2 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo4_level2);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo4_level2 -= 1;

        } 
    }
}

  }
  
  if (room == rm_mundo4level4){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo4_level4 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo4_level4);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", obj_slime);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo4_level4 -= 1;

        } 
    }
}

  }
#endregion


#region MUNDO 5

if (room == rm_mundo5){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo5 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo5);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo5 -= 1;

        } 
    }
}

  }
  
if (room == rm_mundo5level2){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo5_level2 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo5_level2);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo5_level2 -= 1;

        } 
    }
}

  }
  
  if (room == rm_mundo5level4){
var _margem = 200;
var max_inimigos_por_ciclo = 100; // Define o máximo de inimigos gerados por ciclo

temporizador_nascimento += 1;
if (temporizador_nascimento >= geracao_intervalo && global.total_inimigos_mundo5_level4 > 0) {
    // Reseta o temporizador
    temporizador_nascimento = 0;

    // Determina o número de inimigos a gerar, não excedendo o número de inimigos restantes
    var _inimigos = min(irandom_range(1, max_inimigos_por_ciclo), global.total_inimigos_mundo5_level4);

    for (var i = 0; i < _inimigos; i++) {
        // Escolhe uma linha aleatória
        var linhay = linhas[irandom(numero_linhas - 1)];
        // Define a posição x aleatória ao longo da linha com a margem
        var posx = irandom_range(_margem, room_width - _margem);
	 var tipo_inimigo = choose(obj_slime, obj_dragao, obj_zumbi, obj_skeletro, obj_fantasma);
        // Criar inimigo
        var inimigo = instance_create_layer(posx, linhay, "mobs", tipo_inimigo);
	   
        // Verificar se a instância foi criada corretamente
        if (inimigo != noone) {
            // Determinar a direção aleatoriamente
            var direcao = irandom_range(0, 1); // 0 para esquerda, 1 para direita
    
            
            // Decrementa o contador de inimigos restantes
           global.total_inimigos_mundo5_level4 -= 1;

        } 
    }
}

  }
#endregion
#endregion
