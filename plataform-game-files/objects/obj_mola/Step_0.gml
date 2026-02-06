var _obj_acima = instance_place(x, y - 1, obj_entidade)

	if (_obj_acima && image_index == 1)
			{
				timer_ani = timer ;
				image_index = 0;				
				_obj_acima.velv = -8;	
			}
			
		if (timer_ani <= 60 && timer_ani > 0)
			{
					timer_ani -=1	
			}
		
		if (timer_ani == 0)
				{
						image_index = 1;
				}				