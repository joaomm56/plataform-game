#region Draw Buttons & Background

if ( screen_alpha > 0 ){
	draw_set_color( c_black );
	draw_set_alpha(screen_alpha);
	draw_rectangle( 0,0, get_width, get_height, false );
	draw_set_alpha( 1 );
	draw_set_color( c_white );
	draw_set_halign( fa_center );
	draw_set_valign( fa_center );

	for( var i=0; i<buttons_max; i++; ){
		draw_text_transformed_color( bx[i],by[i],bstring[i],bsca[i] * 3,bsca[i] * 3,0,bcol[i],bcol[i],bcol[i],bcol[i],balpha[i] * screen_alpha );
	}
}

#endregion