function player_macaco() constructor
{
	sprite_idle = spr_macaco2_idle;
	sprite_run = spr_macaco2_run;
	sprite_jump = spr_macaco2_jump;
	sprite_hurt = spr_macaco2_hurt;
	sprite_desappering = spr_desappering;
	sprite_appering = spr_appering;
	
}

function player_sapo() constructor
{
	sprite_idle = spr_sapo_idle;
	sprite_run = spr_sapo_run;
	sprite_jump = spr_sapo_jump;
	sprite_fall = spr_sapo_fall;
	sprite_hurt = spr_sapo_hurt;
	sprite_desappering = spr_desappering;
	sprite_appering = spr_appering;
}

function player_satyr() constructor
{
	sprite_idle = spr_satyr_idle;
	sprite_run = spr_satyr_run;
	sprite_jump = spr_satyr_jump;
	sprite_fall = spr_satyr_fall;
	sprite_hurt = spr_satyr_hurt;	
	sprite_desappering = spr_satyr_unspawn;
	sprite_appering = spr_satyr_spawn;
}
global.player = 0;