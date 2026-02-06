if (mouse){
	escala_x =2;
	escala_y = 2;
	switch (index){
		case 0:
			play_selected_ui()
			animacao_out();
			anim = true;
			destino = (rm_menu);
		break;
		case 1:
			play_selected_ui()
			animacao_out();
			anim = true;
			destino = (rm_options);
		break;
		case 2:
			play_selected_ui()
			animacao_out1();
			anim = true;
			destino = (rm_save);	
		break;
		case 3:
			play_selected_ui()
			game_end()
		break;
	}	
}