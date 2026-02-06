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
segundos = 60;
cooldown_attack = 0;
attack = 0;
life = 1;
estado = "free";
morto = false;