#region		Variáveis

var key_pause		= (keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(global.gamepad_id, gp_start));
var key_down		= (keyboard_check_pressed(ord("W")) or keyboard_check_pressed( vk_down ) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padd) or gamepad_axis_value(global.gamepad_id,gp_axislv) >AXIS_DEADZONEV);
var key_up			= (keyboard_check_pressed(ord("S")) or keyboard_check_pressed( vk_up ) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padu) or gamepad_axis_value(global.gamepad_id,gp_axislv) < -AXIS_DEADZONEV);
var key_confirm		= (keyboard_check_pressed(vk_space) or keyboard_check_pressed( vk_enter) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));

screen_alpha	= Approach( screen_alpha, screen_alpha_set, .1 );

#endregion	Variáveis

#region		Controls

if (key_pause){
  pause = !pause;
  if (pause){	
    instance_deactivate_all(true);
    //audio_pause_all();
	instance_activate_object(obj_gamepad);
	instance_activate_object(obj_music);
    screen_alpha_set = 0.8;
  }else{
    instance_activate_all();
    audio_resume_all();
    screen_alpha_set = 0;	
  }
}
#endregion

#region		Botão		

if ( pause ){
	///		Button Pos		///
	for( var i = 0; i< buttons_max; i++; ){
		var x_set		= cx;
		var y_set		= cy- (margin*(selected- i)); 
		var xoff_set	= 0;
		var yoff_set	= 0;
		var scale_set	= 1;
		var alpha_set	= 1;
		var col_set		= c_white;
		var diff		= abs(selected - i);


		if ( selected == i ){ 			
			scale_set	= 2.5;
			alpha_set	= 1;		
			col_set		= c_white;
			xoff_set	= 10;	 		
		}else{					
			scale_set	= 2 - (0.2* diff);
			alpha_set	= 1 - (0.2* diff);
			col_set		= c_gray;
			xoff_set	= 0;
		}
		///		Set Temp variables into the specified button array		///
		bx[i]		= x_set + bxoff[i];
		by[i]		= lerp( by[i], y_set, 0.2 );
		bsca[i]		= lerp(bsca[i], scale_set, .2 );
		balpha[i]	= lerp( balpha[i], alpha_set, .2 );
		bcol[i]		= col_set;	
		bxoff[ i ]	= lerp( bxoff[ i ], xoff_set, .2 );
		byoff[ i ]  = yoff_set;
		
	}

	
		
	if ( key_down ){
		selected  = Approach( selected, buttons_max - 1, 1 );
	} else if ( key_up	 ){
		selected	= Approach( selected, 0, 1 );
	}
	
	
	if ( key_confirm ){
		if ( pause ){
			switch( selected ){
				case 0:
					play_selected_ui()
					instance_activate_all();
					audio_resume_all();
					screen_alpha_set	= 0; 
					pause = false;
				break;
				case 1: 
					play_selected_ui()
					pause = false;
					screen_alpha_set = 0;
					room_restart()
					if (menu_2)	game_end();
					
				break;
				case 2: 
					play_selected_ui()
					screen_alpha_set = 0;
					pause = false;					
					room_goto(rm_leveis) 					
			
				break;
				case 3: 
					play_selected_ui()
					screen_alpha_set = 0;
					pause = false;					
					room_goto(rm_menu) 					
			
				break;
				case 4:				
					play_selected_ui()
					game_end();
				break;
			}
		}
	} 
} 

#endregion	Botão
