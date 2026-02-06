resolution_width = 1920;
resolution_height = 1080;
resolution_scale = 4;
view_spd = 0.05
view_target = obj_player;
global.view_width = resolution_width / resolution_scale
global.view_height = resolution_height / resolution_scale
window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale);
surface_resize(application_surface,global.view_width * resolution_scale, global.view_height * resolution_scale)
//display_set_gui_size(global.view_width, global.view_width);
alarm[0] = 1;















