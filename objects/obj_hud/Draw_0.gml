
if (global.pause) exit;

#region	VIDA
if global.vida = 10{
draw_sprite(spr_vida,10,959,1033)
}
if global.vida = 9{
draw_sprite(spr_vida,9,959,1033)
}
if global.vida = 8{
draw_sprite(spr_vida,8,959,1033)
}
if global.vida = 7{
draw_sprite(spr_vida,7,959,1033)
}
if global.vida = 6{
draw_sprite(spr_vida,6,959,1033)
}
if global.vida = 5{
draw_sprite(spr_vida,5,959,1033)
}
if global.vida = 4{
draw_sprite(spr_vida,4,959,1033)
}
if global.vida = 3{
draw_sprite(spr_vida,3,959,1033)
}
if global.vida = 2{
draw_sprite(spr_vida,2,959,1033)
}
if global.vida = 1{
draw_sprite(spr_vida,1,959,1033)
}
if global.vida = 0{
draw_sprite(spr_vida,0,959,1033)
} #endregion


#region Mensagem no topo

//desenha a mensagem se message_active for true
if (mensagem_ativa) {
    //configura a fonte, alinhamento do texto e a cor
    draw_set_font(fnt_pixel_principal); //configura a fonte
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
    draw_set_color(c_white);

   //define a transparencia (alpha)
    draw_set_alpha(alpha);

    //desenha a mensagem no centro superior da tela
    draw_text(room_width / 2, 10, "RUN!");
	
   //restaura o alpha para 1
    draw_set_alpha(1);
}#endregion


#region	 MUNDO 1

if (room == rm_mundo1){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo1));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo1));
draw_text(960, 970, "Points: " + string(global.pontos1));
}

if (room == rm_mundo1level2){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo1_level2));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo1_level2));
draw_text(960, 970, "Points: " + string(global.pontos1));
}

if (room == rm_mundo1level3){
draw_text(1500, 970, "Dead: "); //loja
draw_text(450, 970, "Total: "); //loja
draw_text(960, 970, "Points: " + string(global.pontos1));
}

if (room == rm_mundo1level4){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo1_level4));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo1_level4));
draw_text(960, 970, "Points: " + string(global.pontos1));
}

#endregion



#region	 MUNDO 2
if (room == rm_mundo2){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo2));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo2));
draw_text(960, 970, "Points: " + string(global.pontos2));
}

if (room == rm_mundo2level2){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo2_level2));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo2_level2));
draw_text(960, 970, "Points: " + string(global.pontos2));
}

if (room == rm_mundo2level3){
draw_text(1500, 970, "Dead: "); //loja
draw_text(450, 970, "Total: "); //loja
draw_text(960, 970, "Points: " + string(global.pontos2));
}

if (room == rm_mundo2level4){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo2_level4));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo2_level4));
draw_text(960, 970, "Points: " + string(global.pontos2));
}


#endregion


#region MUNDO 3

if (room == rm_mundo3){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo3));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo3));
draw_text(960, 970, "Points: " + string(global.pontos3));
}

if (room == rm_mundo3level2){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo3_level2));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo3_level2));
draw_text(960, 970, "Points: " + string(global.pontos2));
}

if (room == rm_mundo3level3){
draw_text(1500, 970, "Dead: "); //loja
draw_text(450, 970, "Total: "); //loja
//draw_text(960, 970, "Points: " + string(global.pontos_mundo1level2));
draw_text(960, 970, "Points: " + string(global.pontos3));
}

if (room == rm_mundo3level4){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo3_level4));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo3_level4));
draw_text(960, 970, "Points: " + string(global.pontos3));
}
#endregion


#region MUNDO 4

if (room == rm_mundo4){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo4));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo4));
draw_text(960, 970, "Points: " + string(global.pontos4));
}

if (room == rm_mundo4level2){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo4_level2));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo4_level2));
draw_text(960, 970, "Points: " + string(global.pontos4));
}

if (room == rm_mundo4level3){
draw_text(1500, 970, "Dead: "); //loja
draw_text(450, 970, "Total: "); //loja
draw_text(960, 970, "Points: " + string(global.pontos4));
}

if (room == rm_mundo4level4){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo4_level4));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo4_level4));
draw_text(960, 970, "Points: " + string(global.pontos4));
}

#endregion


#region MUNDO 5

if (room == rm_mundo5){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo5));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo5));
draw_text(960, 970, "Points: " + string(global.pontos5));
}

if (room == rm_mundo5level2){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo5_level2));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo5_level2));
draw_text(960, 970, "Points: " + string(global.pontos5));
}

if (room == rm_mundo5level3){
draw_text(1500, 970, "Dead: "); //loja
draw_text(450, 970, "Total: "); //loja
draw_text(960, 970, "Points: " + string(global.pontos5));
}

if (room == rm_mundo5level4){
draw_text(1500, 970, "Dead: " + string(global.inimigos_mortos_mundo5_level4));
draw_text(450, 970, "Total: " + string(global.total_inimigos_mundo5_level4));
draw_text(960, 970, "Points: " + string(global.pontos5));
}
#endregion