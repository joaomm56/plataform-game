var _distancia = distance_to_object(obj_player)
switch(estado){
		case "idle":	
			image_index = 9;
			image_speed = 0;
			
			if ((distancia_abrir >= _distancia && global.interact)&& global.key_chest == 1){
				image_index = 0;
				global.key_chest = 0;
				if global.life < 3{
					global.life +=1
				}
				estado = "abrir";
				
			}
								
		break;	
		case "abrir":		
		image_speed = 1;	
			if (image_index >= image_number -5){			
				image_speed = 0		
				tempo_aberto -=1				
			} 
			
            if (tempo_aberto <= 0){					
				estado = "fechar";	
			}
			
		break;
		
		case "fechar":				
			image_speed = 1;
			if (image_index >= image_number -1)
			{
				image_speed = 0;
				image_alpha -=0.02;
				if (image_alpha <= 0){
					desapareceu = true;
				instance_destroy();
				}
			}
			
		break;
	}
