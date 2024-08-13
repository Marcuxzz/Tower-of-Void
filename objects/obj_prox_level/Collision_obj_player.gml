if keyboard_check_pressed(vk_space){
#region MUNDO 1


 if (room == rm_mundo1){ //mundo que esta

room_goto(rm_mundo1level2); //level 2

instance_destroy();
} 

if (room == rm_mundo1level2){ //level2
	
	room_goto(rm_mundo1level3); // level 3
	
	instance_destroy();
}

if (room == rm_mundo1level3){ // level 3
	
	room_goto(rm_mundo1level4); //level 4
	
	instance_destroy();
}

#endregion


#region MUNDO 2


 if (room == rm_mundo2){ //mundo que esta

room_goto(rm_mundo2level2); //level 2

instance_destroy();
} 

if (room == rm_mundo2level2){ //level2
	
	room_goto(rm_mundo2level3); // level 3
	
	instance_destroy();
}

if (room == rm_mundo2level3){ // level 3
	
	room_goto(rm_mundo2level4); //level 4
	
	instance_destroy();
}


#endregion



#region MUNDO 3


 if (room == rm_mundo3){

//se a room existe, avanca, se nao, vai parar
room_goto(rm_mundo3level2);

instance_destroy();
} 

if (room == rm_mundo3level2){
	
	room_goto(rm_mundo3level3);
	
	instance_destroy();
}

if (room == rm_mundo3level3){
	
	room_goto(rm_mundo3level4);
	
	instance_destroy();
}

#endregion



#region	 MUNDO 4
 
 if (room == rm_mundo4){

//se a room existe, avanca, se nao, vai parar
room_goto(rm_mundo4level2);

instance_destroy();
} 

if (room == rm_mundo4level2){
	
	room_goto(rm_mundo4level3);
	
	instance_destroy();
}

if (room == rm_mundo4level3){
	
	room_goto(rm_mundo4level4);
	
	instance_destroy();
}

#endregion


#region	 MUNDO 5

 if (room == rm_mundo5){

//se a room existe, avanca, se nao, vai parar
room_goto(rm_mundo5level2);

instance_destroy();
} 

if (room == rm_mundo5level2){
	
	room_goto(rm_mundo5level3);
	
	instance_destroy();
}

if (room == rm_mundo5level3){
	
	room_goto(rm_mundo5level4);
	
	instance_destroy();
}

#endregion
}