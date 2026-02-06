draw_set_font(font);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height / 4;
var margin = 150;

draw_set_halign(fa_center);
draw_set_valign(fa_center);
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

for ( var i = 0 ; i < op_num; i++){
	var y2 = y1 + (margin * i);
	var string_w = string_width(options[i])
	var string_h = string_height(options[i])
			
	if (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y){
		if(point_in_rectangle(m_x, m_y, x1 - (string_w * escala_default) / 2, y2 - (string_h * escala_default) / 2 , x1 + (string_w * escala_default) / 2, y2 + (string_h * escala_default) / 2)){
			selected = i;
			if (mouse_check_button_pressed(mb_left))click = true;
		}
	}
		if (selected == i)
		{
			draw_set_color(c_white);
			escala +=1.5
			draw_set_alpha(1)
			
		}else{
			draw_set_color(c_grey);
			escala = escala_default;
			draw_set_alpha(0.8)		
		}
	
	draw_text_transformed(x1,y2, options[i],escala,escala,0);
}















