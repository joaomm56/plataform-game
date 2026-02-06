var _id_chao = instance_place(x,y + 1,obj_colisoes);

contador++;
while (contador >= intervalo) {
    alternador = !alternador;
    contador = 0;
}

draw_self()
if (_id_chao == _id_chao_player) {
    if (alternador) {
        draw_sprite_ext(spr_teclae, 0, x, y - 100, 0.45, 0.45, 0, c_white, 1);
    } else {
        draw_sprite_ext(spr_teclae, 1, x, y - 100, 0.45, 0.45, 0, c_white, 1);
    }
}