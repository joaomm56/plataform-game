var key_left		= (keyboard_check_pressed(ord("A")) or keyboard_check_pressed( vk_left ) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padl));
var key_right		= (keyboard_check_pressed(ord("D")) or keyboard_check_pressed( vk_right ) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padr));
var key_down		= (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) or mouse_wheel_down() or gamepad_button_check_pressed(global.gamepad_id, gp_padd));
var key_up			= (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or mouse_wheel_up() or gamepad_button_check_pressed(global.gamepad_id, gp_padu));

if (key_left){
	global.c_selected -= 1;		
    if (global.c_selected < 1) global.c_selected = 1;		
}else if (key_right){
	global.c_selected += 1;
    if (global.c_selected > 3) global.c_selected = 3;	
}
if (key_up) {	
    global.selected -= 1;		
    if (global.selected < 1) global.selected = 1;		
    prev_mouse_x = mouse_x;
    prev_mouse_y = mouse_y;
 
} else if (key_down) {
    global.selected += 1;
    if (global.selected > 3) global.selected = 3;		
    prev_mouse_x = mouse_x;
    prev_mouse_y = mouse_y;
}

