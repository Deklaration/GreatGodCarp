image_speed = 0

if global.notmoved = false
{
image_index = irandom(11)

if global.groundstanding = oSand
{
	image_index = irandom_range(12,14)
}
}
else
{
image_index = global.omarkimageindexsaved
}

if global.fiskesida = "right"
{
for (var i = 0; i<irandom(7); i+=1)
{
	instance_create_depth(random(oProtFishing.x),y-random(16),self.depth-1,oSeaweed)
	
}
}

if global.fiskesida = "left"
{
for (var i = 0; i<irandom(7); i+=1)
{
	instance_create_depth(random_range(oProtFishing.x,room_width),y-random(16),self.depth-1,oSeaweed)
}
}
