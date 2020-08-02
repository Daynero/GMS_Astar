/// @description Create start obj
while (true) {
	var x_cell = irandom_range(2, global.grid_width-2);
	var y_cell = irandom_range(3, global.grid_height-7);
	
	var position_x = (x_cell * global.cell_size);
	var position_y = (y_cell * global.cell_size);
	
	if (!position_meeting(position_x,position_y, obj_par_solid)) && (obj_Hero.x != clamp(position_x,-8,8)) && (obj_Hero.y != clamp(position_y,-8,8)) {
		instance_create_depth(position_x,position_y,depth,obj_Coin);
		break;
	}
}