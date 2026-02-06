room_speed = 60;
gpu_set_tex_filter(false);
menu_2 = false;
#region  General	
font	= font_add_sprite( spr_fonte_pause, ord(" "), 1, 1);
draw_set_font( font );

pause		= false;
get_width		= display_get_gui_width();
get_height		= display_get_gui_height();
cx			= get_width/2;
cy			= get_height/2;
screen_alpha		= 0;
screen_alpha_set	= 0;

#endregion

#region Buttons 

selected	= 1;
buttons_max		= 0;
margin	= 40 * 3;


if (instance_exists(obj_player)){
	bstring = ["RESUME", "RESTART","LEVELS", "MAIN MENU", "EXIT"];	
	menu_2 = false;
	
}else{
	bstring = ["RESUME", "EXIT"];
	menu_2 = true;
}

buttons_max	= array_length(bstring);

for( var i = 0; i< buttons_max; i++; ){
	bx[i]		= 0;
	by[i]		= 0;
	bsca[i]		= 1;
	bcol[i]		= c_white;
	balpha[i]	= 1;	
	bxoff[i]	= 0;
	byoff[i]	= 0;
	
}
#endregion

