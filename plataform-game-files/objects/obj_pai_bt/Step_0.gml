//var _mouse_sobre = instance_position(mouse_x, mouse_y, id);

//var key_left		= (keyboard_check_pressed(ord("A")) or keyboard_check_pressed( vk_left ) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padl));
//var key_right		= (keyboard_check_pressed(ord("D")) or keyboard_check_pressed( vk_right ) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padr));
//var key_down	= (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padd));
//var key_up		= (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padu));
//var key_confirm = (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));	

//var tecla = keyboard_check_pressed(vk_anykey);
//var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);

//if (tecla or global.comando_mexeu) {
//   mouse = false; 
//   reset += 1;
//   if (reset == 1)selected = 2;
//   window_set_cursor(cr_none);
//} else if (mouse_moved) {
//    mouse = true;
//}

//if (mouse_moved) {
//    window_set_cursor(cr_arrow);  
//    prev_mouse_x = mouse_x;
//    prev_mouse_y = mouse_y;
//	reset = 0;
//}

//if (key_up) {	
//    selected -= 1;		
//    if (selected < 1) selected = 1;		
//    prev_mouse_x = mouse_x;
//    prev_mouse_y = mouse_y;
//    // audio_play_sound(sound[0], 0, 0);
//} else if (key_down) {
//    selected += 1;
//    if (selected > 3) selected = 3;		
//    prev_mouse_x = mouse_x;
//    prev_mouse_y = mouse_y;
//    // audio_play_sound(sound[0], 0, 0);
//}

//if (_mouse_sobre && mouse) {	
//    selected = _mouse_sobre.save;
//}else if (mouse) selected = 0;

//if (selected == save) {
//    image_alpha = 1;
//    escala_x = 5.5;
//    escala_y = 1.2;
//    if (key_confirm) {
//        escala_x = 10;
//        escala_y = 3;
//		switch (save){
//			case 1: sys_save(1);
//			break;
//			case 2: sys_save(2);
//			break;
//			case 3: sys_save(3);
//			break;
//		}
//    }
//} else {
//    image_alpha = 0.7;
//    escala_y = 1;
//    escala_x = 5;
//}

//image_xscale = lerp(image_xscale, escala_x * 1, .2);
//image_yscale = lerp(image_yscale, escala_y * 1, .2);


