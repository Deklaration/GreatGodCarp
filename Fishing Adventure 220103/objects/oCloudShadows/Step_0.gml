depth =-1000

if y > room_height+200
{
instance_create_layer(random(room_width),-150,"Clouds",oCloudShadows)
instance_destroy(self)
}