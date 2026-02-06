event_inherited();
vel = choose(1,-1);
andar = choose(true,false);
tempo_decidir_andar = 60 * 1.5;


	if (andar)
	{
		velh = choose(-vel, vel);
	}
	else
	{
		velh = 0;	
	}
	
dano = false;
morto = false;