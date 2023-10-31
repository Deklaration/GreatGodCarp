// Create Particle System
global.smokeParticleSystem = part_system_create();
global.cutscene = true
// Create Particle Type
global.smokeParticle = part_type_create();

x = 791
y = 0
// Initialize path following in the Create Event
path_start(pValnad, 7, path_action_stop, false);
depth = -100

part_type_sprite(global.smokeParticle, pt_shape_square, false, false, false);
part_type_color2(global.smokeParticle, global.color[25], global.color[25]);
part_type_alpha2(global.smokeParticle, 0.7, 0);
part_type_life(global.smokeParticle, 20, 30);
part_type_speed(global.smokeParticle, 0.5, 1, 0, 0);
part_type_direction(global.smokeParticle, 0, 359, 0, 0);
part_type_orientation(global.smokeParticle, 0, 359, 0, 0, 0);
part_type_gravity(global.smokeParticle, 0, 0);
part_type_scale(global.smokeParticle, 0.5, 0.5);

