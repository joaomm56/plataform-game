prev_mouse_x = 0;
prev_mouse_y = 0;
window_set_cursor(cr_none)

menu[0] = "Play";
menu[1] = "Options";
menu[2] = "Credits";
menu[3] = "Exit";

// cursorLevitate will be used to keep a variable that
// oscillates and moves the cursor back and forth
cursorLevitate = 0;


// cursorTime will be used as the "angle" of a sin function
// in conjunction with cursorlevitate to oscillate the cursor
cursorTime = 0;
leviRate = 1.5;
selected = 0;
selectLerp = 0; 
lerpAmt = 0.2;


spacing = 16;
selected_col = c_ltgrey;
not_selected_col = c_white;

titulo_cor = c_white;
titulo = "PAP 2024";
titulo_tamanho = 2;