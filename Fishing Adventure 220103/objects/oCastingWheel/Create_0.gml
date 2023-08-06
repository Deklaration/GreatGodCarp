image_index = 0
image_speed = 0
spin = false
time = 20
stopready = false
stop = false
angle = 0
draw = true

if spin = false && stopready = false
{
	spin = true
}
instance_create_depth(x,self.y - sprite_height/2 , self.depth-2,oArrow)