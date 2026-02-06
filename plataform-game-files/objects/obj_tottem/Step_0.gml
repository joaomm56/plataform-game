switch estado {
	case "free":
		switch (tottem){
	 	case 0:
			muda_sprite(spr_tottem3_idle);
		break;
		case 1:
			muda_sprite(spr_tottem2_idle);
		break;
		case 2:
			muda_sprite(spr_tottem1_idle);
		break;
}
		cooldown_attack -=1;
		if (cooldown_attack <= 0)estado = "fire"
	break;
	case "fire":
	switch (tottem){
	 	case 0:
			muda_sprite(spr_tottem3_attack);
		break;
		case 1:
			muda_sprite(spr_tottem2_attack);
		break;
		case 2:
			muda_sprite(spr_tottem1_attack);
		break;
}
		if (image_index >= image_number - 1){
			instance_create_layer(x, y, layer,obj_shoot_tottem);
			cooldown_attack = segundos * 3;
			estado = "free"
		}
	break;
} 
