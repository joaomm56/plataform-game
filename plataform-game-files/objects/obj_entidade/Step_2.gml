var _colh	= instance_place(x + velh,y,	obj_colisoes)
var _colv	= instance_place(x ,y +  velv,	obj_colisoes)
if(_colh)
{
	if (velh > 0)//direita
	{
		x = _colh.bbox_left + (x - bbox_right);
	}
	
	if (velh < 0)//esquerda
	{
		x = _colh.bbox_right + (x - bbox_left);
	}
	velh = 0;
}


if (_colv)
{
	if (velv > 0) //baixo
	{
		y = _colv.bbox_top + (y - bbox_bottom);
	}
	if (velv < 0) //cima
	{
		y = _colv.bbox_bottom + (y - bbox_top);
	}
	velv = 0;
}

x	+= velh;
y	+= velv;
