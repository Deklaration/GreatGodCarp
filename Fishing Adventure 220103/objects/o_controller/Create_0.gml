game_set_speed(60, gamespeed_fps);
gpu_set_tex_filter(1);
application_surface_enable(0);
display_reset(8, 0);
draw_set_font(fStandard);

x1 = 0;
x2 = 0;
y1 = 0;
y2 = 0;
text = 1;
type = 0;
particles = 1;
debug = 0;

col[0] = make_colour_rgb(44, 62, 80);
col[1] = make_colour_rgb(192, 57, 43);