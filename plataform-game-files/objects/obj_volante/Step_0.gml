var _distancia = point_distance(x, y, obj_player.x, obj_volante.y);

switch(estado){
		case "idle":	
			muda_sprite(spr_v_idle)
			if (distancia_abrir >= _distancia){
				estado = "abrir";
			}
								
		break;	
		case "abrir":		
		muda_sprite(spr_v_girar)								
			
			if((distancia_abrir > _distancia) && global.interact){	
				obj_player.final = 1;
				if (global.level == 0){					
					global.level = 1;		
										
				}				
			}
			
            if (_distancia > distancia_abrir){			
				estado = "idle";	
			}
			
		break;
	}
