
draw_self()

draw_sprite(spr_mouse,0, mouse_x, mouse_y);



/*
//Exibindo se o jogo esta ou não pausado
if (global.pause && !instance_exists(obj_transicao))
{
	var gui_w = display_get_gui_width();
	var gui_h = display_get_gui_height();
	//Escurecendo a tela
	draw_set_alpha(.6);
	draw_rectangle_color(0,0, 1920, 1080, c_black, c_black, c_black, c_black, 0);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_set_halign(1);
	draw_set_valign(1);
	draw_set_font(fnt_pixel_principal);
	draw_text(gui_w/2,gui_h/3, "GAME PAUSED, DON'T MOVE!");
	draw_set_color(-1);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
	
	
	draw_set_font(fnt_pixel_principal);

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height / 1.5;
var margin = 50;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(var i= 0;i <op_max;i++){
	var y2 = y1 + (margin* i);
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);



	if(point_in_rectangle(m_x,m_y,x1 - string_w / 2,y2 - string_h / 2,x1 + string_w / 2,y2 + string_h / 2)){
		draw_set_color(c_gray);
		index = i;

		//evento draw gui dentro do if point_in_rectangle

switch(index){ 
            case 0: if(mouse_check_button_pressed(mb_left)) 
				room_goto(rm_mundos_menu);
				
				;break;
            case 1: 
	
            ;break;
            default:
        }
	
			  
}else{
			draw_set_color(c_white);
            }
		
	draw_text(x1,y2,options[i]);

	
	
	}
			
				 
	
}

