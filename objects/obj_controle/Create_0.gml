if (global.pause) exit;


audio_stop_sound(snd_menu)


global.level = 0;

#region INIMIGOS

#region MUNDO 1

randomize(); // nascer em posicoes aleatorias

//tempo entre geracoes de inimigos (em frames)
geracao_intervalo = room_speed * 2; //geracao a cada 2 segundos
//nascimento dos inimigos
temporizador_nascimento = 1;
//linhas de nascimento
linhas = [386, 578, 770, 960];
numero_linhas = array_length_1d(linhas);

global.inimigos_mortos_mundo1 = 0; 
global.inimigos_mortos_mundo1_level2 = 0; 
global.inimigos_mortos_mundo1_level4 = 0;
global.total_inimigos_mundo1 = 1; // mundo 1 30 inimigos
global.total_inimigos_mundo1_level2 = 1; //mundo 1 level 2 50 inimigos
global.total_inimigos_mundo1_level4 = 1; // 80 inimigos
global.loja_mundo1 = 0;

global.inimigos_restantes1 = global.total_inimigos_mundo1; // nascer o prox level
global.inimigos_restantes1_2 = global.total_inimigos_mundo1_level2; // nascer o prox level
global.inimigos_restantes1_4 = global.total_inimigos_mundo1_level4; // nascer o prox level

//somar os pontos dos leveis do mesmo mundo
if (!variable_global_exists("pontos_existe1") || !global.pontos_existe1) {
    global.pontos1 = 0;
    global.pontos_existe1 = true;
}

#endregion


#region MUNDO 2

randomize(); // nascer em posicoes aleatorias

//tempo entre geracoes de inimigos (em frames)
geracao_intervalo = room_speed * 1; //geracao a cada 1 segundo
//nascimento dos inimigos
temporizador_nascimento = 1;

global.inimigos_mortos_mundo2 = 0; 
global.inimigos_mortos_mundo2_level2 = 0; 
global.inimigos_mortos_mundo2_level4 = 0;
global.total_inimigos_mundo2 = 1; // mundo 1 30 inimigos
global.total_inimigos_mundo2_level2 = 1; //mundo 1 level 2 50 inimigos
global.total_inimigos_mundo2_level4 = 1; // 80 inimigos
global.loja_mundo2 = 0;

global.inimigos_restantes2 = global.total_inimigos_mundo2; // 
global.inimigos_restantes2_2 = global.total_inimigos_mundo2_level2; // nascer o prox level
global.inimigos_restantes2_4 = global.total_inimigos_mundo2_level4; //

//somar os pontos dos leveis do mesmo mundo
if (!variable_global_exists("pontos_existe2") || !global.pontos_existe2) {
    global.pontos2 = 0;
    global.pontos_existe2 = true;
}

#endregion

#region MUNDO 3

randomize(); // nascer em posicoes aleatorias

//tempo entre geracoes de inimigos (em frames)
geracao_intervalo = room_speed * 2; //geracao a cada 2 segundos
//nascimento dos inimigos
temporizador_nascimento = 1;

global.inimigos_mortos_mundo3 = 0; 
global.inimigos_mortos_mundo3_level2 = 0; 
global.inimigos_mortos_mundo3_level4 = 0;
global.total_inimigos_mundo3 = 1; // mundo 1 30 inimigos
global.total_inimigos_mundo3_level2 = 1; //mundo 1 level 2 50 inimigos
global.total_inimigos_mundo3_level4 = 1; // 80 inimigos
global.loja_mundo3 = 0;

global.inimigos_restantes3 = global.total_inimigos_mundo3; // nascer o prox level
global.inimigos_restantes3_2 = global.total_inimigos_mundo3_level2; // nascer o prox level
global.inimigos_restantes3_4 = global.total_inimigos_mundo3_level4; // nascer o prox level

//somar os pontos dos leveis do mesmo mundo
if (!variable_global_exists("pontos_existe3") || !global.pontos_existe3) {
    global.pontos3 = 0;
    global.pontos_existe3 = true;
}


#endregion


#region MUNDO 4

randomize(); // nascer em posicoes aleatorias

//tempo entre geracoes de inimigos (em frames)
geracao_intervalo = room_speed * 2; //geracao a cada 2 segundos
//nascimento dos inimigos
temporizador_nascimento = 1;

global.inimigos_mortos_mundo4 = 0; 
global.inimigos_mortos_mundo4_level2 = 0; 
global.inimigos_mortos_mundo4_level4 = 0;
global.total_inimigos_mundo4 = 1; // mundo 1 30 inimigos
global.total_inimigos_mundo4_level2 = 1; //mundo 1 level 2 50 inimigos
global.total_inimigos_mundo4_level4 = 1; // 80 inimigos
global.loja_mundo4 = 0;

global.inimigos_restantes4 = global.total_inimigos_mundo4; // nascer o prox level
global.inimigos_restantes4_2 = global.total_inimigos_mundo4_level2; // nascer o prox level
global.inimigos_restantes4_4 = global.total_inimigos_mundo4_level4; // nascer o prox level

//somar os pontos dos leveis do mesmo mundo
if (!variable_global_exists("pontos_existe4") || !global.pontos_existe4) {
    global.pontos4 = 0;
    global.pontos_existe4 = true;
}


#endregion


#region MUNDO 5

randomize(); // nascer em posicoes aleatorias

//tempo entre geracoes de inimigos (em frames)
geracao_intervalo = room_speed * 2; //geracao a cada 2 segundos
//nascimento dos inimigos
temporizador_nascimento = 1;

global.inimigos_mortos_mundo5 = 0; 
global.inimigos_mortos_mundo5_level2 = 0; 
global.inimigos_mortos_mundo5_level4 = 0;
global.total_inimigos_mundo5 = 1; // mundo 1 30 inimigos
global.total_inimigos_mundo5_level2 = 1; //mundo 1 level 2 50 inimigos
global.total_inimigos_mundo5_level4 = 1; // 80 inimigos
global.loja_mundo5 = 0;

global.inimigos_restantes5 = global.total_inimigos_mundo5; // nascer o prox level
global.inimigos_restantes5_2 = global.total_inimigos_mundo5_level2; // nascer o prox level
global.inimigos_restantes5_4 = global.total_inimigos_mundo5_level4; // nascer o prox level

//somar os pontos dos leveis do mesmo mundo
if (!variable_global_exists("pontos_existe5") || !global.pontos_existe5) {
    global.pontos5 = 0;
    global.pontos_existe5 = true;
}


#endregion
#endregion




