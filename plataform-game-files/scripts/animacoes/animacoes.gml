function animacao_out(){
	animacao = layer_sequence_create("animacao",room_width/2, room_height/2,sq_escolher_lvl_out)
	global.animacao = true;
}
function animacao_out1(){
	animacao = layer_sequence_create("animacao",room_width/2, room_height/2,sq_escolher_lvl_out1)
	global.animacao = true;
}

function animacao_final(){
	animacao_final_criada = layer_sequence_create("animacao", x, y, sq_fechar_circulo);
}
function animacao_menu(){
	animacao_menu_criada = layer_sequence_create("animacao", room_width/2,  room_height/2, sq_fechar_circulo_menu);
}
function animacao_lvl(){
	animacao_lvl_criada = layer_sequence_create("animacao", room_width/2,  room_height/2, sq_escolher_lvl);
}
