/// @description Insert description here
// You can write your code in this editor
if (!fieldGenerated) {
	with(obj_par_solid)	{
		var blockX = x div obj_Astar.blockSize; 
		var blockY = y div obj_Astar.blockSize;
		obj_Astar.walkable[blockX,blockY] = false;	
	}
	fieldGenerated = true;	
}