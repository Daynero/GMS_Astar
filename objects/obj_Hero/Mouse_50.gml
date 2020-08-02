/// @description Shooting
if canShoot {
	canShoot = false;
	instance_create_depth(x,y,0,obj_bullet);
	alarm[0] = 30;
}