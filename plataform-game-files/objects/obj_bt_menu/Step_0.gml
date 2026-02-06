image_xscale = lerp(image_xscale, escala_x * 1, .2);
image_yscale = lerp(image_yscale, escala_y * 1, .2);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);
var key_confirm = gamepad_button_check_pressed(global.gamepad_id, gp_padu) or keyboard_check_pressed(ord("M"));	
var key_confirm1 = gamepad_button_check_pressed(global.gamepad_id, gp_face3) or keyboard_check_pressed(ord("E"));	
var key_confirm2 = gamepad_button_check_pressed(global.gamepad_id, gp_face4) or keyboard_check_pressed(ord("P"));	
var key_confirm3 = gamepad_button_check_pressed(global.gamepad_id, gp_padd) or keyboard_check_pressed(ord("U"));	
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
	mouse = true;
	teclado = true;
}

switch (index){
	case 0:
		if (key_confirm){
			play_selected_ui()
			animacao_out();
			anim = true;
			destino = (rm_menu);
		}
	break;
	case 1:
		if (key_confirm1){
			play_selected_ui()
			animacao_out();
			anim = true;
			destino = (rm_options);
		}
	break;
	case 2:
		if (key_confirm2){
			play_selected_ui()
			animacao_out1();
			anim = true;
			destino = (rm_save);
		}
	break;
	case 3:
		if (key_confirm3)game_end()
	break;
}	

if (anim) {
    if (!layer_sequence_exists("animacao", animacao)) {
		animacao_out();
    } else if (layer_sequence_is_finished(animacao)) {
        room_goto(destino);
    }
}
