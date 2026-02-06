var colidir_player = instance_place(x, y, obj_player)
var colidir_wall = instance_place(x, y, obj_wall)

if (colidir_player){
	muda_sprite(spr_spike_d)
	if (destroyed == false){
		destroyed  = true
		colidir_player.estado = "dano"
	}
	velh = 0;
}else if (colidir_wall){
	muda_sprite(spr_spike_d)
	destroyed = true;
	velh = 0;
	
	
}

if (sprite_index = spr_spike_d){
	if (image_index >= image_number - 1)instance_destroy();
}
x += velh
 