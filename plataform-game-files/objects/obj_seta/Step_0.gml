 var leave = (keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(global.gamepad_id, gp_face2));
var left_bind  = (keyboard_check_pressed(ord("1")) or gamepad_button_check_pressed(global.gamepad_id, gp_shoulderl));
var right_bind = (keyboard_check_pressed(ord("2")) or gamepad_button_check_pressed(global.gamepad_id, gp_shoulderr));
keyboard_check(vk_anykey)
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);
if (global.comando_mexeu){
	window_set_cursor(cr_none)
	teclado = false
	comando = true;	
	prev_mouse_x = mouse_x;
	prev_mouse_y = mouse_y;
}else if (keyboard_check(vk_anykey)){
	window_set_cursor(cr_none)
	teclado = true;
	comando = false;	
	prev_mouse_x = mouse_x;
	prev_mouse_y = mouse_y;
}

if (mouse_moved){
	window_set_cursor(cr_arrow)
	comando = false;
	teclado = true;
}

if (leave and (back or back2)){
	play_selected_ui()
	animacao_out();
	destino = rm_leveis
}
if (left_bind and left == true){
	play_selected_ui()
	animacao_out();
	destino = rm_leveis
}
if (right_bind and right == true){
	play_selected_ui()
	animacao_out1();
	destino = rm_leveis_2
}
	
if (layer_sequence_is_finished(animacao)) {
   room_goto(destino);
}
