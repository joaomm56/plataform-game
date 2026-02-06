#region variaveis
	var key_down		= (keyboard_check_pressed(ord("S")) or keyboard_check_pressed( vk_down ) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padd));
	var key_up			= (keyboard_check_pressed(ord("W")) or keyboard_check_pressed( vk_up ) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padu));
	var key_confirm		= (keyboard_check_pressed(vk_space) or keyboard_check_pressed( vk_enter) or mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));	
	var vert =  (key_down -  key_up);
	
	
#endregion variaveis
#region mover cursor
	selected += vert;
	selectLerp = lerp(selectLerp, selected, lerpAmt); 
	selected = clamp(selected, 0, array_length_1d(menu) - 1);
	cursorLevitate = dsin(cursorTime);
	cursorTime += leviRate;
#endregion mover cursor
#region botao escolha
	if(key_confirm)
	{
		play_selected_ui()
		if(selected == 0){
			animacao_menu()
			anim = true;
			destino = rm_leveis;
		}
		if(selected == 1){
			animacao_menu()
			anim = true;
			destino = rm_options;
		}
		if(selected == 2)game_end();			
	}
#endregion botao escolha
if (anim) {	
    if (!layer_sequence_exists("animacao", animacao_menu_criada)) {
		animacao_menu();
    } else if (layer_sequence_is_finished(animacao_menu_criada)) {
        room_goto(destino);
    }
}