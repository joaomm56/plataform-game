var _porta = instance_place(x , y, obj_player);
var _distancia = point_distance(x, y, obj_player.x, obj_door.y);
var _id_chao = instance_place(x,y + 10,obj_colisoes);

	switch(estado)
	{
		case "idle":
			muda_sprite(spr_door_idle);	
				
			if (_porta)estado = "abrir";
		break;	
		case "abrir":			
			muda_sprite(spr_door_open)
			
			if (image_index >= image_number -1 && _porta)
			{			
				image_speed = 0			
				if (/*image_speed = 0 && */ _porta && keyboard_check_pressed(ord("E"))){
					obj_player.final = true		
					if (global.level == 3){					
					global.level = 4;		
					}
					if (global.level == 2){					
						global.level = 3;		
					}
				}
			} 
			
           if (_distancia > distancia_maxima or _id_chao != _id_chao_player)
			{			
				image_speed = 1;
				estado = "fechar";	
			}
			
		break;
		
		case "fechar":
			muda_sprite(spr_door_close)
//			if (obj_teclae.image_alpha >= 0.10)
//			{
//				obj_teclae.image_alpha -= 0.01;
//				if (obj_teclae.image_alpha == 0.10)
//				{
//					obj_teclae.visible = false;	
//				}			
//			}
			if (image_index >= image_number -1)estado = "idle";
			
			
		break;
	}
	