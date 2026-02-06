draw_self()
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
