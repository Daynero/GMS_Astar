var x_cell = floor((obj_Hero.x) / global.cell_size);
var y_cell = floor((obj_Hero.y) / global.cell_size);
	
var position_x = x_cell * global.cell_size + (global.cell_size / 2);
var position_y = y_cell * global.cell_size + (global.cell_size / 2);

if (global.pathVariable == 1) {
	if (!is_moving) {
//		is_moving = true;
		var path = aStarGetPath(x + 5 + (global.cell_size / 2),y + 5 + (global.cell_size / 2),position_x,position_y);
		path_start(path, global.maxSpeed * 0.8, 0, false);
//		alarm[0] = 30;
	} 
} else if (global.pathVariable == 0) {
	if (!is_moving) {	
	mp_grid_path(global.grid, pathMpGrid, x + (global.cell_size / 2), y + (global.cell_size / 2), position_x, position_y, false);
}

path_start(pathMpGrid, global.maxSpeed * 0.8, 0, false);	
}