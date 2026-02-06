draw_self()
switch(index) {
	case 0:
		draw_sprite_ext(spr_icon_house,0,x,y,0.1,0.1,0,c_white,1)
		if (global.iconsui){
			if (teclado){
				draw_sprite_ext(spr_teclam, 0, x, y + 36, 0.45,0.45,0,c_white,1);
			}
			if (comando){
				if (global.comando_ps4)draw_sprite_ext(spr_setacima_ps4, 0, x, y + 36, 0.45,0.45,0,c_white,1);
				else if (global.comando_xbox)draw_sprite_ext(spr_setacima_xbox, 0, x, y + 36, 0.45,0.45,0,c_white,1);		
			}
		}
	break;
	case 1:
		draw_sprite_ext(spr_config,0,x,y,0.25,0.25,0,c_white,1)
		if (global.iconsui){
			if (teclado){
				draw_sprite_ext(spr_teclae, 0, x, y + 36, 0.45,0.45,0,c_white,1);
			}
			if (comando){
				if (global.comando_ps4)draw_sprite_ext(spr_quadrado_ps4, 0, x, y + 36, 0.45,0.45,0,c_white,1);
				else if (global.comando_xbox)draw_sprite_ext(spr_cross_both, 0, x, y + 36, 0.45,0.45,0,c_white,1);		
			}
		}
	break;
	case 2:
		draw_sprite_ext(spr_load,0,x,y,0.2,0.2,0,c_white,1)
		if (global.iconsui){
			if (teclado){
				draw_sprite_ext(spr_teclap, 0, x, y + 36, 0.45,0.45,0,c_white,1);
			}
			if (comando){
				if (global.comando_ps4)draw_sprite_ext(spr_triangulo_ps4, 0, x, y + 36, 0.45,0.45,0,c_white,1);
				else if (global.comando_xbox)draw_sprite_ext(spr_y_xbox, 0, x, y + 36, 0.45,0.45,0,c_white,1);		
			}
		}
	break;
	case 3:
		draw_sprite_ext(spr_icon_door,0,x,y,0.2,0.2,0,c_white,1)
		if (global.iconsui){
			if (teclado){
				draw_sprite_ext(spr_teclau, 0, x, y + 36, 0.45,0.45,0,c_white,1);
			}
			if (comando){
				if (global.comando_ps4)draw_sprite_ext(spr_setabaixo_ps4, 0, x, y + 36, 0.45,0.45,0,c_white,1);
				else if (global.comando_xbox)draw_sprite_ext(spr_setabaixo_xbox, 0, x, y + 36, 0.45,0.45,0,c_white,1);		
			}
		}
	break;

}