var mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left,bbox_top,bbox_right,bbox_bottom);
draw_self()

draw_set_font( font );
draw_text_transformed(x - 85, y - 5, texto1, 0.8, 0.8,0);

if (mouse && mouse_sobre or obj_slider.selected == bar){
	if (global.iconsui == true){
		draw_sprite_ext(spr_checkbox_ch,0,x,y,0.3,0.3,0,c_white,1)	
	}else{
		draw_sprite_ext(spr_checkbox_un,0,x,y,0.3,0.3,0,c_white,1)			
	}
}else{
	if (global.iconsui == true){
		draw_sprite_ext(spr_checkbox_ch,0,x,y,0.3,0.3,0,c_black,1)	
	}else{
		draw_sprite_ext(spr_checkbox_un,0,x,y,0.3,0.3,0,c_black,1)			
	}
}