image_alpha = 1
talking = false
createtext = false
//face = sNPCface2
mouthmove = sRunePortraitMouth
gaveSomething = false
hint = "I would ask the tailor about getting a sail."
buildboat = false
pushBoatIndex = 0
boatPushTimer = 60

if global.boatBuilder = true
{
	x = 281
	y = 209-14
}

if global.findSail = false
{
dialog[0] = "I'm just an old sailor without my sea legs."
}
else
{
	
	if global.gotAnchor = false
	{
	dialog[0] = "My gut is telling you to head west for that anchor."
	}
	
	if global.gotTar = false
	{
	dialog[0] = "I think the old Witch uses tar in her potions. [scale,0.5]Don't tell her I called her a witch."
	}
	
	if global.gotSail = false
	{
	dialog[0] = "I would ask the tailor about getting a sail."
	}
	
	
}