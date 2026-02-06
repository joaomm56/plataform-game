if(global.kills == 10)
{		
	global.dkills += 1;
	global.kills = 0;
}
if(global.dkills == 10)
{		
	global.ckills += 1;
	global.dkills = 0;
}

if global.life = 3
{
	draw_sprite(spr_vida,3,15,15)	
}
else if global.life = 2
{
	draw_sprite(spr_vida,2,15,15)	
}
else if global.life = 1
{
	draw_sprite(spr_vida,1,15,15)	
}
else if global.life = 0
{
	global.playermorto = true;
	draw_sprite(spr_vida,0,15,15)	
}


draw_sprite(spr_caveira,0,1900,25)	
draw_sprite(spr_unidade,global.kills,1860,25)	

if (global.dkills >= 1 or global.dkills >= 0 && global.ckills >=1)
{
	draw_sprite(spr_dezena,global.dkills,1830,25)
}

if (global.ckills >= 1 )
{
	draw_sprite(spr_centena,global.ckills,1800,30)
}

if(global.key_chest >= 0){
	draw_sprite_ext(spr_key_hud,global.key_chest,35,110,3.5,3.5,0,c_white,1)
}