 if (final) {
    if (!layer_sequence_exists("animacao", animacao_final_criada))
	{		
		var snd_complete = audio_play_sound(snd_level_complete, 1, false);
		audio_sound_gain(snd_complete, global.sound, 0);
        animacao_final();
    } else if (layer_sequence_is_finished(animacao_final_criada)) {
        room_goto(rm_leveis);
    }
}
	
#region		variáveis
	var volume = (global.sound);
	var _chao	= place_meeting(x ,y + 1, obj_colisoes)
	var _inimigo_abaixo = instance_place(x, y + 1, obj_pai_inimigos)	
	var _inimigo = instance_place(x, y + 1, obj_pai_hitbox)
	var _left		= keyboard_check(andar.left) or gamepad_axis_value(global.gamepad_id,gp_axislh) < -AXIS_DEADZONE;
	var _right		= keyboard_check(andar.right) or gamepad_axis_value(global.gamepad_id,gp_axislh) > AXIS_DEADZONE;
	var _jump		= keyboard_check(andar.jump)  or gamepad_axis_value(global.gamepad_id,gp_axislv) < -AXIS_DEADZONEV or gamepad_button_check(global.gamepad_id, gp_face1);
	global.interact = keyboard_check_pressed(ord("E")) or gamepad_button_check(global.gamepad_id, gp_face3);
	var _teto_acima = place_meeting(x ,y - 6, obj_wall);
	var _agua = instance_place(x,y,obj_aguaf)
	

#endregion	variáveis	

	switch(estado){
		case "free":
			
			if (timer_dano > 0 )timer_dano--;
			else velh= (_right - _left) * vel;
			
			if (inv_timer > 0){
				inv_timer--;	
				image_alpha = .5;
			}else image_alpha = 1;
						
			if (velh != 0)image_xscale = sign(velh) *  player_scale;
			
			if (_agua)estado ="desapear";
			
			if (_chao){	
				respawn_x = x;
				respawn_y = y;
				_id_chao_player = instance_place(x,y + 1,obj_colisoes);	
				
				if ((_jump or keyboard_check(vk_space)) && _teto_acima == false) velv = -vel_jump;
				
				if (velh != 0)muda_sprite(player.sprite_run);
				else muda_sprite(player.sprite_idle);
				
			}else{
				velv += grav;
				if(_jump or keyboard_check(vk_space))muda_sprite(player.sprite_jump);
				
				if (velv > 0){				
					if (_inimigo_abaixo && inv_timer <=0 && _inimigo_abaixo.estado != "dano"){
						if(_inimigo_abaixo.estado != "morto"){
							velv = -vel_jump;										
							_inimigo_abaixo.dano = true;				
						}
				
					}
				}	
			}
			if (_inimigo  && inv_timer <= 0)estado = "dano";
		
		break;
		
		case "dano":			
			muda_sprite(player.sprite_hurt)		
			velv = 0;
			velh = 0;
			if (image_index>= image_number - 1){
				global.life -= 1;
				inv_timer = inv_tempo;
				timer_dano = tempo_dano;				
				estado = "free";
			}
			if (global.life <= 0)estado ="morto";
	
		break;
		
		case "morto":
			muda_sprite(player.sprite_desappering)
			if (image_index >= image_number -1){
				var snd_failed = audio_play_sound(snd_level_failed, 1, false);
				audio_sound_gain(snd_failed, volume, 0);
				room_restart()
			}
		break;
		
		case "desapear":
			muda_sprite(player.sprite_desappering)
			velh = 0;
			velv = 0;		
			if (image_index >= image_number -1){				
				if (instance_exists(obj_player))instance_destroy();
				if (!instance_exists(obj_player))with(instance_create_layer(respawn_x, respawn_y, layer, obj_player)) {				
					image_xscale = player_scale;
					image_yscale = player_scale;
				}		
				estado = "respawn";
			}
		break;
		
		case "respawn":
			muda_sprite(player.sprite_appering)			
			velh = 0;
			velv = 0;		
			if (image_index >= image_number -1)		estado = "free";							
		break;				
	}
