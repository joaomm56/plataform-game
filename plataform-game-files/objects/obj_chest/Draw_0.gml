if (desapareceu = true)exit;
var _id_chao = instance_place(x,y + 1,obj_colisoes);
var _distancia = point_distance(x, 0, obj_player.x, obj_chest.y);

draw_self()	
	
if (/*_distancia < distancia_maxima && */ global.key_chest == 1 && _id_chao_player == _id_chao){
	
		if (alpha < 1){
			alpha +=0.01							
		}	
		if (anim >= 0){
			anim += 0.05
			
			if (global.teclado){
				draw_sprite_ext(spr_teclae,anim,x,y  - 40,0.4,0.4,0,c_white,alpha)
			}else if(global.comando && global.comando_ps4){
				draw_sprite_ext(spr_quadrado_ps4,anim,x,y  - 40,0.4,0.4,0,c_white,alpha)	
			}else if(global.comando && global.comando_xbox){
				draw_sprite_ext(spr_cross_both,anim,x,y  - 20,0.4,0.4,0,c_white,alpha)	
			}
		}
}else{
	if(alpha > 0 && _distancia > distancia_maxima && global.key_chest == 1) {
		alpha -=0.01
		anim += 0.05
		if (global.teclado){
				draw_sprite_ext(spr_teclae,anim,x,y  - 40,0.4,0.4,0,c_white,alpha)
			}else if(global.comando && global.comando_ps4){
				draw_sprite_ext(spr_quadrado_ps4,anim,x,y  - 40,0.4,0.4,0,c_white,alpha)	
			}else if(global.comando && global.comando_xbox){
				draw_sprite_ext(spr_cross_both,anim,x,y - 40,0.4,0.4,0,c_white,alpha)	
			}
	}
	
}


show_debug_message(_id_chao_player)




