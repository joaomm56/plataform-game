var _distancia = distance_to_object(obj_player)

draw_self()	
	
if (_distancia < distancia_maxima){
	
		if (alpha < 1){
			alpha +=0.01							
		}	
		if (anim >= 0){
			anim += 0.05
	
			if (global.teclado){
				draw_sprite_ext(spr_teclae,anim,1920,185,0.4,0.4,0,c_white,alpha)
			}else if(global.comando && global.comando_ps4){
				draw_sprite_ext(spr_quadrado_ps4,anim,1920,185,0.4,0.4,0,c_white,alpha)	
			}else if(global.comando && global.comando_xbox){
				draw_sprite_ext(spr_cross_both,anim,1920,185,0.4,0.4,0,c_white,alpha)	
			}
		}
}else{
	if(alpha > 0 && _distancia > distancia_maxima) {
		alpha -=0.01
		anim += 0.05
		if (global.teclado){
			draw_sprite_ext(spr_teclae,anim,1920,185,0.4,0.4,0,c_white,alpha)
		}else if(global.comando && global.comando_ps4){
			draw_sprite_ext(spr_quadrado_ps4,anim,1920,185,0.4,0.4,0,c_white,alpha)	
		}else if(global.comando && global.comando_xbox){
			draw_sprite_ext(spr_cross_both,anim,1920,185,0.4,0.4,0,c_white,alpha)	
		}
	}
}
	
