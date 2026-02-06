
global.sprite_lvl_p1 = [spr_level1, spr_level2, spr_level3,spr_level4,spr_breve,spr_breve]
window_set_cursor(cr_none)
status = global.level_unlocked[lvl];
sprite_index = global.sprite_lvl_p1[lvl];
image_alpha = 0.5;
global.lvl_selected = 0;
switch(page){
	case 1:
		selected = 0;
	break;
	case 2:
		selected = 3;
	break;
}
mouse = false;
reset = 0;
prev_mouse_x = 0;
prev_mouse_y = 0;
animacao_lvl_criada = 0;