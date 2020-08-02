/// @description Variables init
// Variables
hsp = 0; // Horizontal speed
vsp = 0; // Vertical speed
facing = 1; // Image xscale + current direction
isRunning = false; // Checks if player running
grounded = false; // Check if player on the ground
canShoot = true; // Checks if player can shoot

//Constant
fric = 0.2; // Friction constant
skid = 0.3; // Skid friction constant
acc = 0.1; // Acceleration constant
global.maxSpeed = 3; // Walk speed constant
maxRunSpeed = 6; // Run speed constant
grav = 0.2; // Gravity constant
jumpRatio = -8; // Jump constant
gravLimit = 5; // Fall max speed