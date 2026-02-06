var cursWidth = sprite_get_width(s_cursor);
font	= font_add_sprite( spr_fonte_pause, ord(" "), 1, 1);
draw_set_font( font );

	for(i = 0; i < array_length_1d(menu); i++)
	{
		if(selected == i)
		{
			draw_set_color(selected_col);
		}
		else
		{
			draw_set_color(not_selected_col);
		}
	
		//menu
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_text(35,70 + i * spacing, menu[i]);	
	}
	// cursor
	draw_sprite(s_cursor, -1, x + cursorLevitate - cursWidth, y + 34 + selectLerp*spacing);

	// titulo
	draw_set_color(titulo_cor);
	draw_text_transformed(room_width*0.28, room_height*0.1 , titulo, titulo_tamanho, titulo_tamanho,0);