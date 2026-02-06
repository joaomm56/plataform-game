var _key = instance_place(x , y ,obj_player)
var volume = global.sound 

if (_key && !sound_played) {	
	var snd_collected = audio_play_sound(snd_collect, 1, false);
	audio_sound_gain(snd_collected, volume, 0);
	global.key_chest = 1
	sprite_index = spr_key_effect;	
	sound_played = true;
}

if (sprite_index == spr_key_effect && image_index >= image_number -1){
		instance_destroy();	
		exit;
}





