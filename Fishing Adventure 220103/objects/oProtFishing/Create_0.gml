kastat = false
kastat2 = false
rod = 0
timer = irandom(90)
image_speed = 0
rodthrowspeed = 0
rodthrowx = self.x+19
rodthrowy = self.y+34
skincolor = global.skincolorbeforefish// make_color_rgb(255,231,172)

fishingpolex = oProtFishing.x+8
fishingpoley = oProtFishing.y+26

if global.fiskesida = "right"
{
	image_xscale = 1
}

if global.fiskesida = "left"
{
	image_xscale = -1
}

instance_create_depth(x,y,0,oHitProtFishing)