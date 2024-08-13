window_set_cursor(cr_none)

#region TODAS TELAS SEM SER JOGO
#region	INICIO
if (room == rm_inicio){
	//sair
if keyboard_check_pressed(vk_escape){
	game_end()
}
//entrar
if keyboard_check_pressed(vk_space){ 
	room_goto(rm_menu);
} 

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }

}


#endregion

#region MENU PRINCIPAL

if (room == rm_menu){
	//sair
if keyboard_check_pressed(vk_escape){
	room_goto(rm_inicio);
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }

}
#endregion

#region	MENU DOS MUNDOS
if (room == rm_mundos_menu){
	//sair
if keyboard_check_pressed(vk_escape){
	room_goto(rm_menu);
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }

}
#endregion

#region	TELA FINAL
if (room == rm_tela_final){
	//sair
if keyboard_check_pressed(vk_escape){
	game_end();
	
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }

}
#endregion
#endregion

#region TODAS TELAS DE JOGO

#region MUNDO 1
if (room == rm_mundo1){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo1level2){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo1level3){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo1level4){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}
//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
#endregion

#region MUNDO 2
if (room == rm_mundo2){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo2level2){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
if (room == rm_mundo2level3){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
if (room == rm_mundo2level4){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
#endregion

#region MUNDO 3
if (room == rm_mundo3){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo3level2){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo3level3){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
if (room == rm_mundo3level4){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
#endregion

#region MUNDO 4
if (room == rm_mundo4){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo4level2){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
if (room == rm_mundo4level3){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
if (room == rm_mundo4level4){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
#endregion

#region MUNDO 5
if (room == rm_mundo5){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo5level2){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

if (room == rm_mundo5level3){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}
if (room == rm_mundo5level4){
//pausar
if (keyboard_check_released(vk_escape))  {
    global.pause = !global.pause; //se for false, vai ser o oposto, vise e versa
	
}

//tela cheia
if keyboard_check_pressed(vk_f11){ 
	if(window_get_fullscreen()){ 
		window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
} }
}

#endregion
#endregion
#endregion

