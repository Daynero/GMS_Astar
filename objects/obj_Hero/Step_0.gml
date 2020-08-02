/// @description Variables init every step

// Keyboard button init
var kLeft, kRight, kRun;
kLeft = keyboard_check(vk_left);
kRight = keyboard_check(vk_right);
kRun = keyboard_check(vk_shift);

// Movements
//--Walk move--
//-Left move-
if (kLeft && !kRight) {
	sprite_index = s_Hero_Left;
	if (hsp > 0) {
		hsp -= skid;
	} else {	
		hsp -= acc;
		facing = -1;
	}
//-Right move-
} else if (!kLeft && kRight) {
	sprite_index = s_Hero_Right;
	if (hsp < 0) {
		hsp += skid;
	} else {	
		hsp += acc;	
		facing = 1;
	}
//-Stop moving-
} else if (!kLeft && !kRight) || (kLeft && kRight) {
	sprite_index = s_Hero_Stop;
	if (hsp >= fric) {
		hsp -= fric;
	} else if (hsp <= -fric) {
		hsp += fric;	
	} else if (hsp > -fric) && (hsp < fric) {
		hsp = 0;	
	}
}

//--Running--
if (kRun) {
	isRunning = true;	
} else { 
	if (abs(hsp) > global.maxSpeed) {	
		hsp += -sign(hsp) * fric;
	} else if (abs(hsp) <= global.maxSpeed) {
		isRunning = false;	
	}
}

//--Speed limit--
if (isRunning) {
	hsp = clamp(hsp, -maxRunSpeed, maxRunSpeed);	
} else {
	hsp = clamp(hsp, -global.maxSpeed, global.maxSpeed);	
}
//--Gravity--
vsp += grav; // Set up gravity
//-Jumping-
if (keyboard_check(vk_up)) && grounded {
	var j;
	if (abs(hsp) > global.maxSpeed) {
		j = abs(hsp) / (maxRunSpeed * 8) + 1;	
	} else {
		j = 1;	
	}
	vsp = jumpRatio * j;
}

if (vsp > gravLimit) {
	vsp = gravLimit;	
}

//--Collisions--
//-Solid-
// Vertical
if (place_meeting(x,y+vsp, obj_par_solid)) {
	while(!place_meeting(x,y+sign(vsp), obj_par_solid)) {
		y += sign(vsp);
	}
	vsp = 0;
}
if collision_line(0, 0, 0, 928, obj_Hero, false, false) room_restart();
if collision_line(896, 0, 896, 928, obj_Hero, false, false) room_restart();
// Gorizontal
if (place_meeting(x+hsp,y, obj_par_solid)) {
	while(!place_meeting(x+sign(hsp),y, obj_par_solid)) {
		x += sign(hsp);
	}
	hsp = 0;
}
// Diagonal
if (place_meeting(x+hsp,y+vsp, obj_par_solid)) {
	while(!place_meeting(x+sign(hsp),y+sign(vsp), obj_par_solid)) {
		x += sign(hsp);
		y += sign(vsp);
	}
	hsp = 0;
	vsp = 0;
}
// Grounded cheking
if (place_meeting(x, y+1, obj_par_solid)) {
	grounded = true;	
} else {
	grounded = false;
}
if keyboard_check(vk_f1) { room_restart();}
//--Move on hsp/vsp--
x += hsp; // Move x by hsp
y += vsp; // Move y by vsp