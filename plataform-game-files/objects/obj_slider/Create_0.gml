if (music_bar){
	valor = global.music;
}else {
	valor = global.sound;	
}

valor2 = 1 - valor;
texto2 = round(valor * 100);
mover = false;
selected = 0;
mouse = false;
reset = 0;
prev_mouse_y = 0;
prev_mouse_x = 0;

window_set_cursor(cr_arrow)
cor_bt = c_white
font	= font_add_sprite( spr_fonte_pause, ord(" "), 1, 1);


slider_desenho = function(){
var slider_x = x + (sprite_width * valor)
draw_self()
draw_sprite_part_ext(spr_slider, 0, 0, 0, sprite_width * valor2, sprite_height ,x + 96 ,y - sprite_height / 2,-1,1,c_black,0.7)
draw_sprite_ext(spr_slider_bt, 0, slider_x,y,0.7,0.7,0,cor_bt,1)
}

