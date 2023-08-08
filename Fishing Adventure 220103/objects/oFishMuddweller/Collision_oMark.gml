/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < random_range(40, 60); ++i) {
   part_particles_create_color(o_particles.ps_mud, x+random_range(-3,3), y+random_range(3,8), o_particles.pt_mud, global.color[10], random_range(3, 20));
}
