global.gamepad_id = 0;
global.comando_xbox = false;
global.comando_ps4 = false;
global.comando_mexeu = false;
global.teclado = false;
global.comando = false;
device_description = "";


gamepad_connect = function(){
    var _gamepad_slots = gamepad_get_device_count();
    
    for(var _i = 0; _i < _gamepad_slots; _i++){
        if (gamepad_is_connected(_i)){
            global.gamepad_id = _i;
			device_description = gamepad_get_description(global.gamepad_id);
            gamepad_set_axis_deadzone(global.gamepad_id, AXIS_DEADZONE);
			if (device_description == "XInput STANDARD GAMEPAD") {
				global.comando_xbox = true;
				global.comando_ps4 = false;
			} else if (device_description == "PS4 Controller" or device_description == "PS5 Controller") {
				global.comando_ps4 = true;
				global.comando_xbox = false;
			} else{
				global.comando_ps4 = false;
				global.comando_xbox = false;
			}
							
return true;					
        }
    }    
    return false;        
}

	
gamepad_check_any_button = function(){
var _joystickl= gamepad_axis_value(global.gamepad_id,gp_axislh) < -AXIS_DEADZONE or gamepad_axis_value(global.gamepad_id,gp_axislh) > AXIS_DEADZONE or gamepad_axis_value(global.gamepad_id,gp_axislv) < -AXIS_DEADZONEV or gamepad_axis_value(global.gamepad_id,gp_axislv) > AXIS_DEADZONEV ;
var _joystickr= gamepad_axis_value(global.gamepad_id,gp_axisrh) < -AXIS_DEADZONE or gamepad_axis_value(global.gamepad_id,gp_axisrh) > AXIS_DEADZONE or gamepad_axis_value(global.gamepad_id,gp_axisrv) < -AXIS_DEADZONEV or gamepad_axis_value(global.gamepad_id,gp_axisrv) > AXIS_DEADZONEV;

	for(var _i = gp_face1; _i <= gp_padr; _i++){
		if (gamepad_button_check(global.gamepad_id, _i))
		{
			global.comando_mexeu = true;
			return true;
			
		}else if(_joystickl or _joystickr){
			global.comando_mexeu = true;			
			return true;
			
		}
	}
	global.comando_mexeu = false;
	return false;
}
	










