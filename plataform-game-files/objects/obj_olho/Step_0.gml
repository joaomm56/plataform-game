if (morto) 
{
	sprite_index = spr_olho_hurt;
	velh = 0;
	
	if (image_speed <= 0)
	{
		image_alpha -= 0.01;	
	}
	
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
	exit;
}



var _chao	= place_meeting(x ,y + 1, obj_wall);

if (_chao)
{
	tempo_decidir_andar -= 1;
	
	if (tempo_decidir_andar <= 0)
	{
		andar = choose(true,false);	
		
		if (andar)
		{
			velh = choose(-vel, vel);
			
		}
		else
		{
			velh = 0;	
		}
		tempo_decidir_andar = 60 * 1.5;
	}
	
	
	if (velh != 0 && dano == false)
	{
		sprite_index = spr_olho_run;
		image_xscale = sign(velh)*0.75;
	}
	else
	{
		sprite_index = spr_olho_idle;		
	}
	
	if (place_meeting(x + velh , y, obj_wall))
	{
		velh *= -1;
	}
	
	if (pode_cair == false)
	{
		if (place_meeting(x + velh * 15, y + 1 , obj_wall) == false)
		{
			velh *= -1;
		}
	}
}
else
{
	velv += grav;
	sprite_index = spr_olho_fall;
}
