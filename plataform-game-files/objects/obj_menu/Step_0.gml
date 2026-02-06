var key_down		= (keyboard_check_pressed(ord("S")) or keyboard_check_pressed( vk_down ) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padd));
var key_up			= (keyboard_check_pressed(ord("W")) or keyboard_check_pressed( vk_up ) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padu));
var key_confirm		= (keyboard_check_pressed(vk_space) or keyboard_check_pressed( vk_enter) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));


if ( key_down){
		selected  = Approach( selected, op_num - 1, 1 );
		window_set_cursor(cr_none)
		prev_mouse_x = mouse_x;
		prev_mouse_y = mouse_y;
		// audio_play_sound( sound[0], 0, 0 );
}else if ( key_up ){
		selected	= Approach( selected, 0, 1 );
		window_set_cursor(cr_none)
		prev_mouse_x = mouse_x;
		prev_mouse_y = mouse_y;
		// audio_play_sound( sound[0], 0, 0 );
}

if (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y) {
	  window_set_cursor(cr_arrow)
}

	switch (selected){
		case 0:
			if (key_confirm or click)room_goto_next()
		break;
					
		case 1:
			if (key_confirm or click)room_goto_next()
		break;
		
		case 2:
			
		break;
		
		case 3:
			if (key_confirm or click)game_end()
		break;
	}

















