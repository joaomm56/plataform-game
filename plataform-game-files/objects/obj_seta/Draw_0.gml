draw_self();
if (global.iconsui){
	if (teclado){
		if (right)draw_sprite_ext(spr_tecla_2, 0, x + 9, y + 36, 0.525,0.525,0,c_white,1);
		else if (left)draw_sprite_ext(spr_tecla1, 0, x - 9, y + 36, 0.525,0.525,0,c_white,1);
		else if (back)draw_sprite_ext(spr_escape, 0, x - 9, y + 36, 0.35,0.35,0,c_white,1);
		else if (back2)draw_sprite_ext(spr_escape, 0, x - 4.5, y + 18, 0.175,0.175,0,c_white,1);
	}
	if (comando){
		if (right && global.comando_ps4)draw_sprite_ext(spr_r1, 0, x + 9, y + 36, 0.525,0.525,0,c_white,1);
		else if (left && global.comando_ps4)draw_sprite_ext(spr_l1, 0, x - 9, y + 36, 0.525,0.525,0,c_white,1);
		else if (back && global.comando_ps4)draw_sprite_ext(spr_circle_ps4, 0, x - 9, y + 36, 0.35,0.35,0,c_white,1);
		else if (back2 && global.comando_ps4)draw_sprite_ext(spr_circle_ps4, 0, x - 4.5, y + 18, 0.175,0.175,0,c_white,1);
		else if (right && global.comando_xbox)draw_sprite_ext(spr_rb, 0, x + 9, y + 36, 0.525,0.525,0,c_white,1);
		else if (left && global.comando_xbox)draw_sprite_ext(spr_lb, 0, x - 9, y + 36, 0.525,0.525,0,c_white,1);
		else if (back && global.comando_xbox)draw_sprite_ext(spr_b_xbox, 0, x - 9, y + 36, 0.525,0.525,0,c_white,1);	
		else if (back2 && global.comando_xbox)draw_sprite_ext(spr_b_xbox, 0, x - 4.5, y + 18, 0.175,0.175,0,c_white,1);		
	}
}