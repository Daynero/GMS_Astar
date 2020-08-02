/// @description Add enemy
while (true) {
	var x_cell = irandom_range(0, (global.grid_width-1));
	var y_cell = irandom_range(0, (global.grid_height-1));
	
	var position_x = (x_cell * global.cell_size);
	var position_y = (y_cell * global.cell_size);
	
	if (!position_meeting(position_x,position_y, obj_par_solid)) 
			&& (!position_meeting(clamp(position_x,-8,8),clamp(position_y,-8,8), obj_Hero))  {
		instance_create_depth(position_x,position_y,depth,obj_Enemy);
		break;
	}
}