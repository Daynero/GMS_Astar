/// @description Insert description here
// You can write your code in this editor
fieldGenerated = false;

blockSize = 32;
fieldWidth = ceil(room_width/blockSize);
fieldHeight = ceil(room_height/blockSize);

for (var i = 0; i < fieldWidth; i++) {
	for (var j = 0; j < fieldHeight; j++) {
		walkable[i,j] = true; // непроходимые препятствия	
	}
}

