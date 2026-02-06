layer_sequence_create("animacao", x, y, sq_abrir_circulo)

switch (global.player){
	case 0:
		player = new player_macaco()	
		player_scale = 0.7;
		mask_index = spr_macaco2_idle
	break;	
	case 1: 
		player = new player_sapo()
		player_scale = 0.9;
		mask_index = spr_sapo_idle
	break;	
	case 2: 
		player = new player_satyr()	
		player_scale = 1.5;
		mask_index = spr_satyr_idle
	break;	
}

andar	= {
	left	: ord("A"),
	right	: ord("D"),
	jump	: ord("W")
} 

image_xscale = player_scale;
image_yscale = player_scale;

velh		= 0;
velv		= 0;
vel			= 3;
grav		=.3;
vel_jump	= 5;

dano = false;
global.playermorto = false;

segundos = 60;
tempo_dano = segundos;
timer_dano = 0;
inv_timer = 0;
inv_tempo = segundos * 2;
globalvar _id_chao_player;
_id_chao_player = 0;
respawn_x = x;
respawn_y = y;
final = 0;
estado = "respawn";
animacao_final_criada = 0;

