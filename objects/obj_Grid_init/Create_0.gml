/// @description Insert description here
// You can write your code in this editor
randomize();

global.cell_size = 32;
global.grid_width = ceil(room_width / global.cell_size);
global.grid_height = ceil(room_height / global.cell_size);

global.grid = mp_grid_create(0, 0, global.grid_width, global.grid_height, global.cell_size, global.cell_size);


// Random block
event_user(0);
event_user(1);
event_user(2);