var margem = 5;
var mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left - margem,bbox_top,bbox_right + margem,bbox_bottom);
var mouse_click = mouse_check_button(mb_left)
var mouse_pressed = mouse_check_button_pressed(mb_left)
var mouse_released = mouse_check_button_released(mb_left)
var key_down	= (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padd)  or gamepad_axis_value(global.gamepad_id,gp_axislv) > AXIS_DEADZONEV );
var key_up		= (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padu) or gamepad_axis_value(global.gamepad_id,gp_axislv) < -AXIS_DEADZONEV);
var key_left		= (keyboard_check(ord("A")) or keyboard_check( vk_left ) or gamepad_button_check(global.gamepad_id, gp_padl) or gamepad_axis_value(global.gamepad_id,gp_axislh) < -AXIS_DEADZONE );
var key_right		= (keyboard_check(ord("D")) or keyboard_check( vk_right ) or gamepad_button_check(global.gamepad_id, gp_padr) or gamepad_axis_value(global.gamepad_id,gp_axislh) > AXIS_DEADZONE);
var tecla = keyboard_check_pressed(vk_anykey);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);

if (tecla or global.comando_mexeu) {
   mouse = false; 
   reset += 1;
   if (reset == 1)selected = 1;
   mover = false
   prev_mouse_x = mouse_x;
   prev_mouse_y = mouse_y;
} else if (mouse_moved) {
    mouse = true;  
	reset = 0;
	selected = 0;
}

if (key_up) {	
    selected -= 1;		
    if (selected < 1) selected = 1;		
    // audio_play_sound(sound[0], 0, 0);
} else if (key_down) {
    selected += 1;
    if (selected > 3) selected = 3;		
   // audio_play_sound(sound[0], 0, 0);
}

if ((mouse_sobre && mouse) or selected == bar){
cor_bt = c_ltgrey;
	if ((mouse_pressed && mouse))mover = true
	
}else cor_bt = c_white


if (mover or selected == bar){
	if ((mouse_click && mouse) or selected == bar){
		if (mouse){
			valor = (mouse_x - x) / sprite_width;
			selected = 0;
		}else{
				if (key_left){
					valor -= 0.003
				}else if (key_right){
					valor += 0.003
				}
		}
		valor = clamp(valor,0,1)
		valor2 = 1 - valor;
		texto2 = round(valor * 100);
		if (music_bar){
			global.music = valor;
		}else {
			global.sound = valor;
		}
		
	}else if (mouse_released && mouse){
		mover = false;
	}
	sys_save_automatico()
}