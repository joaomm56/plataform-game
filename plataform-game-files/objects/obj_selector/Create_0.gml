mouse = false;
reset = 0;
selected = 1;
prev_mouse_x = 0;
prev_mouse_y = 0;
switch(player){	
	case 0: muda_sprite(spr_macaco2_idle) 
		image_xscale = 3;
		image_yscale = 3;
	break;
	case 1: muda_sprite(spr_sapo_idle) 
		image_xscale = 4;
		image_yscale = 4;
	break;
	
	case 2: muda_sprite(spr_satyr_idle)
		image_xscale = 6;
		image_yscale = 6;
	break;
	
}

image_speed = 0;
image_alpha = .5;
