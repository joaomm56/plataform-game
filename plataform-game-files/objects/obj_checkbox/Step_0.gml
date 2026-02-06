var key_confirm = (keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.gamepad_id, gp_face1));	
var mouse_sobre = point_in_rectangle(mouse_x, mouse_y, bbox_left,bbox_top,bbox_right,bbox_bottom);
var mouse_click = mouse_check_button_pressed(mb_left)
var tecla = keyboard_check_pressed(vk_anykey);
var mouse_moved = (mouse_x != prev_mouse_x or mouse_y != prev_mouse_y);

if (tecla or global.comando_mexeu) {
   mouse = false; 
   reset += 1;
   prev_mouse_x = mouse_x;
   prev_mouse_y = mouse_y;
   if (reset == 1)selected = 1;
} else if (mouse_moved) {
      mouse = true;
	  reset = 0;
	  selected = 0;
}


if ((key_confirm && obj_slider.selected == bar) or (mouse_click && mouse_sobre)){	
	if (!global.iconsui)global.iconsui = true;	
	else if (global.iconsui)global.iconsui = false;
	play_selected_ui()
	sys_save_automatico()
}

