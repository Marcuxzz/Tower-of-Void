function Script2(){

}global.pause = false;

//enum para facilitar leitura
enum STATUS_BLOQUEIO{
	BLOQUEADO,  //0
	DESBLOQUEADO //1
}


//saber quais mundos estao bloqueados

global.mundos = [STATUS_BLOQUEIO.DESBLOQUEADO, STATUS_BLOQUEIO.BLOQUEADO, STATUS_BLOQUEIO.BLOQUEADO, STATUS_BLOQUEIO.BLOQUEADO, STATUS_BLOQUEIO.BLOQUEADO];

//definindo sprite para cada mundo

global.sprite_mundos = [spr_mundo1, spr_mundo2, spr_mundo3, spr_mundo4, spr_mundo5];