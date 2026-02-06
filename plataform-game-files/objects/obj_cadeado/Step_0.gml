if (global.locks[lock_index] or global.level_unlocked[lock_index]) {
    visible = false;
} 

if (global.level >= lock_index){
	muda_sprite(spr_cadeado_abrindo);
	sys_save_lvl_auto();	
}else  {
	visible = true;	
	global.level_unlocked[lock_index] = 0;
	global.locks[lock_index] = false;
	muda_sprite(spr_cadeado_f);
}

if (image_index >= image_number -1 && sprite_index = spr_cadeado_abrindo)
{
	image_speed = 0;
	image_index = 5;	
	
}
if (image_speed = 0 && image_alpha >= 0) image_alpha -= 0.01

if (image_alpha <= 0){
	if (global.level >= lock_index){
		global.locks[lock_index] = true;
		global.level_unlocked[lock_index] = 1;
	}
}

