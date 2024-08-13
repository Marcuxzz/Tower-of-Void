if (global.pause) exit;
spd = 10; // velocidade 4
hspd = 0; //velocidade horizontal
vspd = 0; //velocidade vertical
grv = 0.9; //gravidade

global.vida = 1000; //vida do boneco 10 de vida

alarm[0] = 0;
alfa_hit = 0;

estado = "parado" //state machine

chao = false;

// se o player morrer, é pra colocar isso no codigo pra zerar
global.pontos = 0;
global.pause = false;