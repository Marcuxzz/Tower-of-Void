if (global.pause) exit;

global.pontos1 += 5;
global.pontos2 += 5;
global.pontos3 += 5;
global.pontos4 += 5;
global.pontos5 += 5;

global.inimigos_mortos_mundo1 += 1;
global.inimigos_mortos_mundo2 += 1;
global.inimigos_mortos_mundo3 += 1;
global.inimigos_mortos_mundo4 += 1;
global.inimigos_mortos_mundo5 += 1;
global.inimigos_mortos_mundo1_level2 += 1;
global.inimigos_mortos_mundo1_level4 += 1; // fazer isso pras fases funcionar
global.inimigos_mortos_mundo2_level2 += 1;
global.inimigos_mortos_mundo2_level4 += 1;
global.inimigos_mortos_mundo3_level2 += 1;
global.inimigos_mortos_mundo3_level4 += 1;
global.inimigos_mortos_mundo4_level2 += 1;
global.inimigos_mortos_mundo4_level4 += 1;
global.inimigos_mortos_mundo5_level2 += 1;
global.inimigos_mortos_mundo5_level4 += 1;

// inimigos q ainda tem
global.inimigos_restantes1 -= 1;
global.inimigos_restantes1_2 -= 1;
global.inimigos_restantes1_4 -= 1;  //fazer isso para funcionar
global.inimigos_restantes2 -= 1;
global.inimigos_restantes2_2 -= 1;
global.inimigos_restantes2_4 -= 1;
global.inimigos_restantes3 -= 1;
global.inimigos_restantes3_2 -= 1;
global.inimigos_restantes3_4 -= 1;
global.inimigos_restantes4 -= 1;
global.inimigos_restantes4_2 -= 1;
global.inimigos_restantes4_4 -= 1;
global.inimigos_restantes5 -= 1;
global.inimigos_restantes5_2 -= 1;
global.inimigos_restantes5_4 -= 1;


#region MUNDO 1
// Verifica se todos os inimigos foram mortos
if (global.inimigos_restantes1 <= 0) {
    // Verifica se a sala atual é rm_mundo1
    if (room == rm_mundo1) {
        instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

if (global.inimigos_restantes1_2 <= 0) {
  
    if (room == rm_mundo1level2) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
} 
if (global.loja_mundo1 == 0) {
    //
    if (room == rm_mundo1level3) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

#endregion

#region MUNDO 2

// Verifica se todos os inimigos foram mortos
if (global.inimigos_restantes2 <= 0) {
    // Verifica se a sala atual é rm_mundo1
    if (room == rm_mundo2) {
        instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

if (global.inimigos_restantes2_2 <= 0) {
    // Verifica se a sala atual é rm_mundo2
    if (room == rm_mundo2level2) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
} 
if (global.loja_mundo2 == 0) {
    //
    if (room == rm_mundo2level3) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

#endregion	

#region	MUNDO 3

// Verifica se todos os inimigos foram mortos
if (global.inimigos_restantes3 <= 0) {
    // Verifica se a sala atual é rm_mundo1
    if (room == rm_mundo3) {
      instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

if (global.inimigos_restantes3_2 <= 0) {
    // Verifica se a sala atual é rm_mundo2
    if (room == rm_mundo3level2) {
      instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
} 
if (global.loja_mundo3 == 0) {
    //
    if (room == rm_mundo3level3) {
        instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}
#endregion

#region	MUNDO 4

// Verifica se todos os inimigos foram mortos
if (global.inimigos_restantes4 <= 0) {
    // Verifica se a sala atual é rm_mundo1
    if (room == rm_mundo4) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

if (global.inimigos_restantes4_2 <= 0) {
    // Verifica se a sala atual é rm_mundo2
    if (room == rm_mundo4level2) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
} 
if (global.loja_mundo4 == 0) {
    //
    if (room == rm_mundo4level3) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}
#endregion

#region MUNDO 5

// Verifica se todos os inimigos foram mortos
if (global.inimigos_restantes5 <= 0) {
    // Verifica se a sala atual é rm_mundo1
    if (room == rm_mundo5) {
        instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}

if (global.inimigos_restantes5_2 <= 0) {
    // Verifica se a sala atual é rm_mundo2
    if (room == rm_mundo5level2) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
} 
if (global.loja_mundo5 == 0) {
    //
    if (room == rm_mundo5level3) {
       instance_create_layer(x, y, "mobs", obj_prox_level);//passar de fase
    }
}
#endregion



