if (live_call()) return live_result;
depth =-y;

if global.boatBuilder = false
{

	if global.searchedTheCave = true && global.findSail = false
	{
	scrNewDialog()
	dialog[0] = "You're looking for a boat, that's right?"
	dialog[1] = "Aren't we all... Nothing encapsulates the bravery of man like a boat can..."
	dialog[2] = "I'm too old to sail. I sold my boat a long time ago."
	dialog[3] = "Well, except for this gig. It doesn't do me any good. It's yours if you want it." 
	dialog[4] = "Although, it's not water worthy in its current condition. Haven't been at sea for decades."
	dialog[5] = "But if you get some gear, I bet you can get it in decent condition. It just needs some love."
	dialog[6] = "And a sail [sItemsIcon,6], some tar [sItemsIcon,7] and an anchor [sItemsIcon,8]!"

		if talking = true
		{
			array_push(oGame.quest,"Find a sail!")
			array_push(oGame.quest,"Find some tar!")
			array_push(oGame.quest,"Find an anchor!")
			global.findSail = true
			global.findTar = true
			global.findAnchor = true
			talking = false
		}
	}

	if global.findSail = true
	{
		scrOldSailorTalk()
	}
}


scrTalkToNPC()

if buildboat = true
{
	if !instance_exists(oText)
	{
		scrTransitionsStart(rBoatBuilder,sqFadeOut,sqFadeIn)
	}
}

if global.boatBuilder = true && global.shipSet = false && boatPushTimer >=0
{
	oProt.nose = global.nosesouth
	oProt.clothes = global.clothessouth
	oProt.x = 307
	oProt.y = 181-14
	oProt.sprite_index = sProt_South
	oProt.xscale = 1
	sprite_index = sPushBoat
	image_speed = 0
	boatPushTimer -=d(1)
	global.cutscene = true
	show_debug_message("HEJ")
}

if global.boatBuilder = true && global.shipSet = false && boatPushTimer <0
{
	
	if image_index = 13
	{
		
		oProt.sprite_index = sProt_SouthWest
		oProt.nose = global.nosesouthwest
		oProt.clothes = global.clothessouthwest
	}
	
	show_debug_message("hallå")
	sprite_index = sPushBoat
	image_index = pushBoatIndex
	
	if x > 300 && x < 315
	{
		oProt.sprite_index = sProt_South
		oProt.nose = global.nosesouth
		oProt.clothes = global.clothessouth		
	}
	if x > 320
	{
		oProt.sprite_index = sProt_SouthWest
		oProt.sprite_index = sProt_SouthWest
		oProt.nose = global.nosesouthwest
		oProt.clothes = global.clothessouthwest
		oProt.xscale = -1
	}
	
	if pushBoatIndex < 29
	{
		pushBoatIndex +=d(0.25)
	}
	else
	{
		if x < 360
		{
			x+=0.25
		}
		else
		{
			global.shipSet = true
		}
		
		if (global.frame_count % 24 < 12) {
		  pushBoatIndex = 29;
		} 
		else 
		{
			pushBoatIndex = 30;
		}
	}

}

if global.shipSet = true && global.sailing = false
{
image_speed = 0
sprite_index = sOldSailor
global.cutscene = false
scrNewDialog()
dialog[0] = "Say hi to the waves from me."
}


//show_debug_message(buildboat)