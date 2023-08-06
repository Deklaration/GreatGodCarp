if (instance_exists(o_liquid_parent)) {
    with (o_liquid_parent) {
        var bounds = dyliquid_get_bounds();
        if (other.x >bounds[0] and other.x < bounds[2]) { // if ducky in bounding block of liquid
            var col_y = dyliquid_get_y(other.x); // get collision point
            if (other.in_water = 0) { 
                if (other.y >= col_y) { // check collision
                    dyliquid_spash(other.x, other.vspeed * 8);  // splash
                    // particles
                    if (o_controller.particles = 1) {
                        if (object_index = o_water) { // for water
                            part_particles_create_colour(o_particles.ps, other.x, other.y, o_particles.pt_splash, make_colour_rgb(52, 152, 219), random_range(3, 6));
                        } else { // for lava
                            part_particles_create_colour(o_particles.ps, other.x, other.y, o_particles.pt_splash, make_colour_rgb(211, 84, 0), random_range(3, 6));
                        }
                    }
                    other.vspeed = 0;
                    other.gravity = 0;
                    other.in_water = 1;
                }
            } else {
                other.y = col_y-16; // float on surface
            }
        }
    }
}

