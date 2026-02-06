slider_desenho();
draw_set_font( font );
draw_text_transformed(x, y -12, texto1, 0.8, 0.8,0);
if (valor >= 0.10 ){
	draw_text_transformed(x + 87, y - 10, texto2, 0.5, 0.5,0);
}else if (valor <0.10){
	draw_text_transformed(x + 92, y - 10, texto2, 0.5, 0.5,0);
}