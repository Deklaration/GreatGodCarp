depth = 10

tension = 0.02
dampening = 0
spread =  2
wave = 0.05
wavespeed = 0.5

//dyliquid_init(100, 0.025, 0.025, 0.35, 0.2, 2, x, y, x+oProtFishing.x+50,y+room_height)// 
dyliquid_init(
10, 
tension,//0.01,
dampening,//0.025, 
spread,//0.35, 
wave,//0.3, 
wavespeed,//2, 
x, 
y, 
x+sprite_width, 
room_height)

col[0] = global.color[19]//make_colour_rgb(52, 152, 240);
col[1] = global.color[20]//make_colour_rgb(41, 128, 200);

