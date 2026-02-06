var _mouse_sobre = instance_position(mouse_x, mouse_y, id);

var key_left		= (keyboard_check_pressed(ord("A")) or keyboard_check_pressed( vk_left ) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padl));
var key_right		= (keyboard_check_pressed(ord("D")) or keyboard_check_pressed( vk_right ) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padr) );
var key_confirm		= (keyboard_check_pressed(vk_space) or keyboard_check_pressed( vk_enter) or mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));	

var tecla = keyboard_check_pressed(vk_anykey);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);

if (tecla or global.comando_mexeu) {
   mouse = false; 
   reset += 1;
   if (reset == 1)selected = 1;
   window_set_cursor(cr_none);
} else if (mouse_moved) {
    mouse = true;
}

if (mouse_moved) {
    window_set_cursor(cr_arrow);  
    prev_mouse_x = mouse_x;
    prev_mouse_y = mouse_y;
	reset = 0;
}

if ( key_left ){
		selected  += -1;		
		if (selected < 0)selected = 0		
		prev_mouse_x = mouse_x;
		prev_mouse_y = mouse_y;
		
}else if ( key_right ){
		selected	 +=	1
		if (selected > 2)selected = 2		
		prev_mouse_x = mouse_x;
		prev_mouse_y = mouse_y;
		
}


if (_mouse_sobre && mouse) {	
    selected = _mouse_sobre.player;
}else if (mouse)selected = -1;

if (selected == player) {	
	image_alpha = 1;
	image_speed = 1;
	if (key_confirm){
		play_selected_ui()
		global.player = player
		switch (global.lvl_selected){
			case 0:
				room_goto(rm_level1)
			break;
			case 1:
				room_goto(rm_level2)
			break
			case 2:
				room_goto(rm_level3)
			break
			case 3:
				room_goto(rm_level4)
			break
			case 4:
				room_goto(rm_leveis_2)
			break
			case 5:
				room_goto(rm_leveis_2)
			break
		}		
	}	
}else {
	image_alpha = .5;	
	image_speed = 0;		
}


     

