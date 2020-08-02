/// @description Insert description here
// You can write your code in this editor
if (global.timer > 0) && (global.enemyDead) {
	global.timer--;	
} else if global.timer == 0 {
	global.enemyDead = false;
	while (true) {
	var x_cell = irandom_range(0, global.grid_width);
	var y_cell = irandom_range(0, global.grid_height);
	
	var position_x = (x_cell * global.cell_size);
	var position_y = (y_cell * global.cell_size);
	
	if (!position_meeting(position_x,position_y, obj_par_solid)) {
		instance_create_depth(position_x,position_y,depth,obj_Enemy);
		break;
	}
	}
}