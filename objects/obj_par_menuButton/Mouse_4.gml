/// @description Start Game
if variable_global_exists("pathVariable") {
	room_goto_next();
} else {
	global.pathVariable = 1;
	room_goto_next();
}