draw_set_font(fnt_pixel_principal);

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height / 2;
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
				if(window_get_fullscreen()){
					window_set_fullscreen(false);
				}else{
					window_set_fullscreen(true);
				} ;break;
            case 1: 
			
            scr_audio_set(); 


                var x1_audio = x1+(string_w/2)+8
                draw_set_color(c_white)
                draw_rectangle(x1_audio,y2-(string_h*0.5),x1_audio+string_w,y2+(string_h*0.5),false)
                draw_set_color(c_gray)
                draw_rectangle(x1_audio,y2-(string_h*0.5),(max((x1_audio+(string_w*audio_set)),x1)),y2+(string_h*0.5),false)

            ;break;
            case 2: if(mouse_check_button_pressed(mb_left)) room_goto(rm_menu) ;break;
         //   case 3: if(mouse_check_button_pressed(mb_left)) room_goto(rm_menu) ;break;
            default:
        }
	
			  
}else{
			draw_set_color(c_white);
            }
		
	draw_text(x1,y2,options[i]);

	
	
	}
			
				 