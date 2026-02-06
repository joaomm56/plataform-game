function sys_del_save(){
	var filename = "pap.save" + string(argument0) + ".ini";	
	file_delete(filename);
}

function sys_save(){
	var filename = "pap.save" + string(argument0) + ".ini";
	ini_open(filename);
	ini_write_real("game", "progresso_lvl", global.level);
	ini_close();
}

function sys_load(){
	var filename = "pap.save" + string(argument0) + ".ini";
	if (file_exists(filename)) {
	    ini_open(filename);
		global.level = ini_read_real("game", "progresso_lvl", 0);
		ini_close();
	}
}

#region settings save
	function sys_save_automatico(){
		var filename = "settings" + ".ini";
		ini_open(filename);
		ini_write_real("settings", "music", global.music);
		ini_write_real("settings", "sound", global.sound);
		ini_write_real("settings", "iconsui", global.iconsui);
		ini_close();
	
	}
	function sys_load_automatico(){
		var filename = "settings" + ".ini";
		if (file_exists(filename)) {
		    ini_open(filename);
			global.music = ini_read_real("settings", "music", 0);
			global.sound = ini_read_real("settings", "sound", 0);
			global.iconsui = ini_read_real("settings", "iconsui", 0);
			ini_close();
		}
}
#endregion

function sys_save_lvl_auto(){
	var filename = "pap.save" + string(global.last_save) + ".ini";
	ini_open(filename);
	ini_write_real("game", "progresso_lvl", global.level);
	ini_close()	
}

function sys_load_lvl_auto(){
	var filename = "pap.save" + string(global.last_save) + ".ini";
	if (file_exists(filename)) {
	    ini_open(filename);
		global.level = ini_read_real("game", "progresso_lvl", 0);
		ini_close();
	}
}

function sys_save_lastsave(){
	var filename = "settings" + ".ini";
	ini_open(filename);
	ini_write_real("settings", "lastsave", global.last_save);
	ini_close()	
}

function sys_load_last_save(){
	var filename = "settings" + ".ini";
	if (file_exists(filename)) {
	    ini_open(filename);
		global.last_save = ini_read_real("settings", "lastsave", 0);
		ini_close();
	}
}



