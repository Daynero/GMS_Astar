//Draw score text
draw_set_color(c_fuchsia);
draw_set_font(fn_Score)
draw_text(15,15,"Score: " + string(coins));
if global.timer > 1 {
	draw_text(15,48,"Respaun Enemy: " + string(global.timer div 50));
}
if global.pathVariable == 1 {
	draw_text(200,15, + "A Star");
} else {
	draw_text(200,15, + "mp_grid_path");	
}

