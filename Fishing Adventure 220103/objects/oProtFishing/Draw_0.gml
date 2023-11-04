//if (live_call()) return live_result;

if noBait = true
{
	draw_sprite(sNoBait,noBaitTimer/12,x+10,y+14)
	sprite_index = sProtFishingGotAway
	noBaitTimer -=d(1)
}
if noBaitTimer <0
{
	sprite_index = sProtFishing
	noBait = false
	noBaitTimer = 60
}

if sprite_index = sProtFishingCasting
{
	global.cantpause = true
	
	fishingpolex = oProtFishing.x+8
	fishingpoley = oProtFishing.y+26
	rodthrowspeed +=0.75
	
	if image_index >= 0 && image_index < 1 || image_index >= 6
	{
	rodthrowx = self.x+19
	rodthrowy = self.y+34
	}
	
	if image_index >= 1 && image_index < 2 || image_index >= 5 && image_index < 6 
	{
	rodthrowx = self.x+21
	rodthrowy = self.y+31
	}
	if image_index >= 2 && image_index < 3 || image_index >= 4 && image_index < 5
	{
	rodthrowx = self.x+24
	rodthrowy = self.y+26
	}
	if image_index >= 3 && image_index < 4
	{
	rodthrowx = self.x+30
	rodthrowy = self.y+20
	}
	
	draw_sprite(sFishingRodThrow_1,rodthrowspeed,rodthrowx,rodthrowy)
}
else
{
global.cantpause = false
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, skincolor, image_alpha);

if sprite_index = sProtFishing || sprite_index = sProtFishingGotAway// global.fiskesida = "right"
{
	global.cantpause = false
	draw_sprite_ext(sRods,rod,self.x,self.y,1,1,0,c_white,1)
	fishingpolex = oProtFishing.x+8
	fishingpoley = oProtFishing.y+26
	rodthrowspeed = 0
}

if sprite_index = sProtFishingCaughtFish
{
	global.cantpause = false
	fishingpolex = oProtFishing.x+8
	fishingpoley = oProtFishing.y+26
	if image_index >= 0 && image_index <1
	{
	draw_sprite_ext(sRodsCaughtFish,rod,self.x,self.y+1,1,1,0,c_white,1)
	}
	else
	{
	draw_sprite_ext(sRodsCaughtFish,rod,self.x+1,self.y+2,1,1,0,c_white,1)
	}
}


if sprite_index = sProtFishingPull
{
	global.cantpause = true
	draw_sprite_ext(sRods,rod,self.x-4,self.y+3,1,1,0,c_white,1)
	fishingpolex = oProtFishing.x+5
	fishingpoley = oProtFishing.y+30
}

if sprite_index = sProtFishingReeling
{
	global.cantpause = true
	draw_sprite_ext(sRods,rod,self.x-4,self.y+3,1,1,0,c_white,1)
}
