var key_left		= (keyboard_check_pressed(ord("A")) or keyboard_check_pressed( vk_left ) or gamepad_button_check_pressed(global.gamepad_id, gp_padl) or gamepad_axis_value(global.gamepad_id,gp_axislh) < -AXIS_DEADZONE );
var key_right		= (keyboard_check_pressed(ord("D")) or keyboard_check_pressed( vk_right ) or gamepad_button_check_pressed(global.gamepad_id, gp_padr) or gamepad_axis_value(global.gamepad_id,gp_axislh) > AXIS_DEADZONE);
var key_confirm = (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));	
var tecla = keyboard_check_pressed(vk_anykey);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);
var mouse_sobre = instance_position(mouse_x,mouse_y,id)

status = global.level_unlocked[lvl];
if (tecla or global.comando_mexeu) {
   mouse = false; 
   reset += 1;
   if (reset == 1){	   
	   switch (page){
			case 1:
				selected = 0;
			break;
			case 2:
				selected = 3;
			break;
		}
   }
   prev_mouse_x = mouse_x;
   prev_mouse_y = mouse_y;
} else if (mouse_moved) {
    mouse = true;  
	reset = 0;
	selected =  -1;
}

if ( key_left && status){
		selected  += -1;	
		switch (page){
			case 1:
				if (selected < 0)selected = 0
				if (selected > global.level)selected = global.level	
				if (selected > 2)selected = 2
			break;
			case 2:
				if (selected < 3)selected = 3
				if (selected > global.level)selected = global.level	
				if (selected > 5)selected = 5
			break;
		}
				
}else if ( key_right && status){
		selected	 +=	1
		switch (page){
			case 1:
				if (selected < 0)selected = 0
				if (selected > global.level)selected = global.level		
				if (selected > 2)selected = 2
			break;
			case 2:
				if (selected < 3)selected = 3
				if (selected > global.level)selected = global.level	
				if (selected > 5)selected = 5
			break;
		}
}

if ((selected == lvl or (mouse && mouse_sobre)) && status){
		image_alpha = 1;
		if (key_confirm && status){
			animacao_lvl();
			play_selected_ui()
			global.lvl_selected = lvl;
		}
}else image_alpha = .5

if (layer_sequence_is_finished(animacao_lvl_criada)) {
   room_goto(rm_escolher);
}