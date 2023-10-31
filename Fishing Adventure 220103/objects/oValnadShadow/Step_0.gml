// In the Step Event of an object (or wherever you want the effect to be emitted)
if (live_call()) return live_result;



part_particles_create(global.smokeParticleSystem, x, y, global.smokeParticle, 10);
if path_position > 0.99
{
	global.valnadMovedIn = true
	instance_destroy(self)
}