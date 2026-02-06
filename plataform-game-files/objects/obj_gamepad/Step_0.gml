gamepad_connect();
gamepad_check_any_button();

if ( keyboard_check(vk_anykey)){
	global.teclado = true;
	global.comando = false;
}else if (global.comando_mexeu == true){
	global.teclado = false;
	global.comando = true
}	
	