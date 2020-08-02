/// @description Initiolaize solid squares
/// @description Add random stages
stage1_Width = 0;
while stage1_Width < global.grid_width {
	n = irandom_range(3, 5);
	repeat (n) {
		mp_grid_add_cell(global.grid, stage1_Width, 9);
		stage1_Width++
	}
	stage1_Width += irandom_range(1,3);
}
stage2_Width = 0;
while stage2_Width < global.grid_width {
	stage2_Width += irandom_range(1,3);
	n = irandom_range(3, 5);
	repeat (n) {
		mp_grid_add_cell(global.grid, stage2_Width, 14);
		stage2_Width++
	}	
}
stage3_Width = 0;
while stage3_Width < global.grid_width {
	n = irandom_range(3, 5);
	repeat (n) {
		mp_grid_add_cell(global.grid, stage3_Width, 19);
		stage3_Width++
	}
	stage3_Width += irandom_range(1,3);
}
stage4_Width = 0;
while stage4_Width < global.grid_width {
	stage4_Width += irandom_range(1,3);
	n = irandom_range(3, 5);
	repeat (n) {
		mp_grid_add_cell(global.grid, stage4_Width, 24);
		stage4_Width++
	}
}









