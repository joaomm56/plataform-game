var _mouse_sobre = instance_position(mouse_x, mouse_y, id);
var key_confirm = (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));	

var tecla = keyboard_check_pressed(vk_anykey);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);

if (tecla or global.comando_mexeu) {
   mouse = false; 
   reset += 1;
   if (reset == 1)global.selected = 2;
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

if (_mouse_sobre && mouse) {	
    global.selected = _mouse_sobre.Load;
	global.c_selected = _mouse_sobre.coluna;
}else if (mouse){
	global.selected = 0;
	global.c_selected = 0
}

if (global.selected == Load && global.c_selected == coluna ) {
    image_alpha = 1;
    escala_x = 1.3;
    escala_y = 1.2;
    if (key_confirm) {
        escala_x = 3;
        escala_y = 3;
		switch (Load){
			case 1:
				sys_load(1);
				global.last_save = 1;
				sys_save_lastsave();
			break;
			case 2: 
				sys_load(2);
				global.last_save = 2;
				sys_save_lastsave();
			break;
			case 3: 
				sys_load(3);
				global.last_save = 3;
				sys_save_lastsave();
			break;
		}
    }
} else {
    image_alpha = 0.7;
    escala_y = 1;
    escala_x = 1;
}

image_xscale = lerp(image_xscale, escala_x * 1, .2);
image_yscale = lerp(image_yscale, escala_y * 1, .2);


