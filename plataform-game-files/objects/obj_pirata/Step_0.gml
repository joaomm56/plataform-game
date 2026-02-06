#region variaveis locais	
	var _chao	= place_meeting(x ,y + 1, obj_colisoes);
	var _distancia = distance_to_object(obj_player);	
	var _alvo_x = point_direction(x, y, obj_player.x, obj_player.y);
	var _dir = sign(obj_player.x - x) * 0.9;
	var _id_chao = instance_place(x,y + 1,obj_colisoes);
#endregion variaveis locais
	
#region estado		
	switch(estado){
	#region morto
		case "morto":
			muda_sprite(spr_pirata_dead)
			
			if (morto){
				morto = false;
				global.kills += 1;
			}
			
			if (image_index >= image_number -1){
				image_speed = 0;
				image_index = 3;				
			}
			if (image_speed <=0)image_alpha -= 0.01
			if (image_alpha <=0)instance_destroy()
			exit;
		break;	
	#endregion morto
	#region free		
		case "free":	
			if (cooldown_attack <= segundos && cooldown_attack >0)cooldown_attack -= 1;
			
			if (_chao){			
				if(_distancia < 150 && cooldown_attack <= 0 && _id_chao_player == _id_chao)estado = "chasing";
				tempo_decidir_andar -= 1;
				
				if (tempo_decidir_andar <= 0){
					andar = choose(true,false);			
					if (andar)velh = choose(-vel, vel)
					else velh = 0;
				
					tempo_decidir_andar = segundos * irandom_range(0, 4);
				}
			
				if (dano)estado = "dano";
		 	
				if (velh != 0){
					muda_sprite(spr_pirata_run)
					image_xscale = sign(velh) * 0.9;
				}else muda_sprite(spr_pirata_idle);				
	
				if (place_meeting(x + velh , y, obj_colisoes))velh *= -1;
								
				if (pode_cair == false)if (not place_meeting(x + velh * 15, y + 1 , obj_colisoes))velh *= -1;
				
			}else{
				velv += grav;
				muda_sprite(spr_pirata_fall);				
			}
		break; 
	#endregion free	
	#region dano
		case "dano":
			muda_sprite(spr_pirata_hurt)
			if (instance_exists(obj_hitbox_p1))instance_destroy(obj_hitbox_p1);
			
			if (instance_exists(obj_hitbox_p2))instance_destroy(obj_hitbox_p2);
			
			if (instance_exists(obj_hitbox_p3))instance_destroy(obj_hitbox_p3);
			velh = 0;	
		
			if (image_index >= image_number -1){			
				dano = false;	
				life -= 1;
				tempo_decidir_andar = segundos;
				if (life <= 0){
					morto = true;
					estado = "morto";					
				}else estado = "free";									
			}				
		break;
	#endregion dano
	#region chase
		case "chasing":
			muda_sprite(spr_pirata_run)		
			if(dano)estado = "dano";		
			
			image_xscale = _dir;
			if (_distancia < 20)estado = "attacking";
			
			if (_distancia > 200)estado = "free";	 
			
			if (_chao){
				velh = lengthdir_x(abs(vel)* 1.5 ,_alvo_x)	
				if (not place_meeting(x + velh * 15, y + 1 , obj_colisoes))velh = 0;
				
				if ( _id_chao_player != _id_chao){					
					estado = "free"
				}			
			}		
		break;
	#endregion chase
	#region attack
		case "attacking":
			if (dano)estado = "dano";
			
			image_xscale = _dir;
			if (attack == 0)attack = irandom_range(1,3);
			
	        switch (attack) {				
	            case 1:
	                muda_sprite(spr_pirata_attack1);
					if (image_index > 1)if(!instance_exists(obj_hitbox_p1))instance_create_layer(x , y, layer,obj_hitbox_p1);
					
					velh = 0;
	                if (image_index >= image_number - 1) {	
						if (instance_exists(obj_hitbox_p1))instance_destroy(obj_hitbox_p1);		
						
						cooldown_attack = segundos;
						attack = 0;	
						tempo_decidir_andar = 0;
	                    estado= "free";
	                }
	                break;

	            case 2:
	                muda_sprite(spr_pirata_attack2);
					if (image_index > 1)if(!instance_exists(obj_hitbox_p2))instance_create_layer(x , y, layer,obj_hitbox_p2);
					
					velh = 0;
	                if (image_index >= image_number - 1) {
						if (instance_exists(obj_hitbox_p2))instance_destroy(obj_hitbox_p2);
						
						cooldown_attack = segundos ;
	                    attack = 0;
						tempo_decidir_andar = 0;
	                    estado= "free";
	                }
	                break;

	            case 3:
	                muda_sprite(spr_pirata_attack3);
					if (image_index > 1)if(!instance_exists(obj_hitbox_p3))instance_create_layer(x , y, layer,obj_hitbox_p3);
					
					velh = 0;
	                if (image_index >= image_number - 1) {
						if (instance_exists(obj_hitbox_p3))instance_destroy(obj_hitbox_p3);
						
						cooldown_attack = segundos;
	                    attack = 0;
						tempo_decidir_andar = 0;
	                    estado= "free";
	                }
	                break;
	        }	    
		break;
	#endregion attack	
	}
#endregion estado
