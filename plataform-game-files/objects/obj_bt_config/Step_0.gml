image_xscale = lerp(image_xscale, escala_x * 1, .2);
image_yscale = lerp(image_yscale, escala_y * 1, .2);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);
var key_confirm = gamepad_button_check_pressed(global.gamepad_id, gp_face3) or keyboard_check_pressed(ord("E"));	

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
	mouse = true;
}

if (key_confirm){
	room_goto(rm_options)	
}