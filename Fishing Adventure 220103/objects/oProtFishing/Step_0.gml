if global.paused = false
{




if kastat = false && image_index = 6
	{
		sprite_index = sProtFishing
		image_speed = 0
		instance_create_depth(self.x,self.y,0,oBete)
		kastat = true
	}

timer -= 1

if timer < 0
{
	if global.fiskesida = "right"
	{
	instance_create_depth(room_width+20,random_range(0,oWater.y-10),0,oBird) 
	}
	if global.fiskesida = "left"
	{
	instance_create_depth(-20,random_range(0,oWater.y-10),0,oBird) 
	}
	
	timer = irandom_range(40,800)
}
}

if keyboard_check_pressed(global.key_a) && !instance_exists(oFishGuide)
{
	if global.activebait > 0
	{
	
	if global.paused = false
	{


if !instance_exists(oCastingWheel) && kastat2 = false
{
instance_create_depth(room_width-60,room_height-60,-300,oCastingWheel)
}

if instance_exists(oCastingWheel)
{
	if oCastingWheel.stop = true
	{
		//global.rod1dur -=1 //DURABILITY GÅR NED 1 MED ROD 1
		sprite_index = sProtFishingCasting
		image_speed = 0.375
		kastat2 = true
	}
}

}//Pause

	} //Man har bete
	else
	{
	noBait = true	
	}
}//key_a

if keyboard_check_pressed(global.key_b) && !instance_exists(oFishGuide)
{
oWater.tension = 0.02
oWater.dampening = 0
oWater.spread =  0
oWater.wave = 0
oWater.wavespeed = 0
	global.oprotfishingrandomysaved = global.oprotfishingrandomy
	global.omarkrandomysaved =  global.omarkrandomy
	global.omarkimageindexsaved = oMark.image_index
	scrTransitionsStart(global.lastroom,sqFadeOut,sqFadeIn)
}

