depth =-y//-19;
if (live_call()) return live_result;
scrTalkToNPC()
//show_debug_message(image_xscale)
if room = rBeachside
{
if talking = true
{
	global.bringMuddwellerToOphelia = true
}

if global.gotAGoodShovel = false && global.gotSign = false
	{

	if global.bringMuddwellerToOphelia = true && scrInventorySearch(oInventory,enumFish.Muddweller) != -1
	{
		if dialog[0] != "Hey, is that a... It's a Muddweller! Wow! Did you bring that for me?[YesNo]"
		{
			array_delete(dialog,0,array_length(dialog))
			 dialog[0] = "Hey, is that a... It's a Muddweller! Wow! Did you bring that for me?[YesNo]"
		}
	}

	if yes = false
	{
		scrYesNoStart()
		dialog[0] = "Oh, I really thought... never mind."
		scrYesNoEnd()
	}

	if yes = true
	{
		scrYesNoStart()
		scrInventoryRemove(oInventory,enumFish.Muddweller)
		dialog[0] = "No way, tourist! Aren't you just the sweetest! Thank you!"
		dialog[1] = "It's dead and won't do much digging, but I appreciate the gesture!"
		dialog[2] = "You're a pretty nice guy, aren't you?"
		dialog[3] = "How about helping me fix up this place?"
		dialog[4] = "First, I need a good shovel to dig this place up!"
		dialog[5] = "I bet Muriel got one, she's famous for keeping an extravagant garden."
		global.findAGoodShovel = true
		scrYesNoEnd()
	}

	if global.findAGoodShovel = true && global.gotAGoodShovel = false
	{
	scrNewDialog()
	dialog[0] = "Ask Muriel for a shovel. She lives in the house with the big garden."
	}
}

if global.gotAGoodShovel = true && global.gotSign = false
{
	if talking = true
	{
		array_push(oGame.quest,"Find coal!")
		array_push(oGame.quest,"Find driftwood!")
		global.findCoalAndDriftwood = true
		scrInventoryRemove(oKeyInventory,enumItem.Shovel)
	}
	scrNewDialog()
	dialog[0] = "That's a nice looking shovel you've got there! Wonderful!"
	dialog[1] = "Give it here, I'll start digging while you search for a new sign to hang over the door!"
	dialog[2] = "I want it to say [fTextboxLargeShadow]\"COASTAL CURIOSITIES\"[fTextboxShadow] in bold, beautiful letters!"
	dialog[3] = "[color_9]Some driftwood and old coal will do fine[color_19], it will fit the aesthetics perfectly. I bet you can find some here on this beach!"
}

if global.gotSign = true
{

	scrNewDialog()
	dialog[0] = "Wow!" 
	dialog[1] = "That's a terrible handwriting!"
	dialog[2] = "Well, not everyone is an artist."
	dialog[3] = "I bet I can make it prettier if you'd like. But it's your choice! Do you want me to redo it?[YesNo]"

	
	if yes = true
	{
		show_debug_message("HALLÅDÄR")
		scrYesNoStart()
		dialog[0] = "Okay, let's see here..."
		dialog[1] = "There we go! A brand new sign!"
		global.sSign = sPreMadeSign
		placeSign = true
		scrYesNoEnd()

	}
	if yes = false
	{
		show_debug_message("köp blåbär")
		scrYesNoStart()
		dialog[0] = "I'm happy if you're happy!"
		dialog[1] = "Let's put it up!"
		placeSign = true
		scrYesNoEnd()
		
	}



}

if global.enterTheForest = true && placeSign = false
{
	scrNewDialog()
	dialog[0] = "Grab a big piece of tree bark from the forest. I bet it would look amazing as a door!"
}

if placeSign = true
{
	global.cutscene = true
	sprite_index = sOpheliaSign
	timer -=1
	if timer <0
	{
	sprite_index = sOphelia
	global.putUpSign = true
	scrNewDialog()
	createtext = false
	dialog[0] = "Beautiful! It's almost ready!"
	dialog[1] = "But that door is a travesty. Get me a new one, and I'll keep digging here."
	dialog[2] = "Grab a big piece of tree bark from the forest. I bet it would look amazing!"
	array_push(oGame.quest,"Enter the forest!")
	global.enterTheForest = true
	scrYesNoEnd()
	global.cutscene = false
	placeSign =  false
	}
	
}


if global.gotBark = true && placeDoor = false
{
	scrNewDialog()
	dialog[0] = "That's a GREAT door! I love it! Give it here!"
	if talking = true
	{
	if !instance_exists(oText)
	{
		placeDoor = true
	}
	}
}


if placeDoor = true && global.putUpDoor = false
{
	global.cutscene = true
	sprite_index = sOpheliaSign
	timer -=1
	if timer <0
	{
	sprite_index = sOphelia
	global.putUpDoor = true
	scrNewDialog()
	createtext = false
	dialog[0] = "Come on in! Welcome to the grand re-opening of COASTAL CURIOSITIES!"
	array_push(oGame.quest,"Talk to Ophelia!")
	scrYesNoEnd()
	global.cutscene = false
	placeDoor =  false
	}
	
}

if global.putUpDoor = true && !instance_exists(oText)
{
	if x < oMuseum.x
	{
		x+=1
	}
	if x >= oMuseum.x
	{
		y-=1
	}
	if place_meeting(x,y,oMuseum)
	{
	instance_destroy(self)	
	}

}
}

if room = rCoastalCuriosities 
{
	if talking = true && global.findTheSecretCave = false
	{
	array_push(oGame.quest,"Find the secret cave!")
	global.findTheSecretCave = true
	}

	if global.findTheSecretCave = true
	{
		scrNewDialog()
		dialog[0] = "Ask around about the secret cave. Someone must know something!"
	}
}

if room = rCavern && trident = false
{
	sprite_set_offset(sprite_index, sprite_width/2, sprite_height);
	mask_index = sNothing
	
	if global.searchTheCave = false
	{
	if y> oProt.y
	{
		y-=1	
	}
	else
	{
		scrYesNoStart()
		dialog[0] = "This... This is it."
		dialog[1] = "Has this been here the whole time?"
		dialog[2] = "..."
		dialog[3] = "I don't know what to say. You're seeing what I'm seeing, right?"
		dialog[4] = "Three dead fishes, three different burials. They are just as big as Great God Carp..."
		dialog[5] = "I never considered that the god fish can die. But apparently, the festival is old. Way older than I imagined."
		dialog[6] = "Old enough that at least three generations of the Great God Carp has been celebrated and buried."
		dialog[7] = "Look! Each of them seems to have been buried with some kind of artifact!"
		dialog[8] = "Some kind of decorated stick. I wonder what it is.[PAINTING1]"
		dialog[9] = "Is that... diving gear? Maybe it's something connecting the underwater world with the humans. That's amazing.[PAINTING2]"
		dialog[10] = "And... wow. That must be the biggest jewel I've ever seen. It might just be the fabled Carp's tear... I've always wondered what that was...[PAINTING3]"
		dialog[11] = "One buried in the forest...[PAINTING1]"
		dialog[12] = "One on a tiny island...[PAINTING2]"
		dialog[13] = "And one... oh my...[PAINTING3]"
		dialog[14] = "One in a cavern. It must be close... The Carp's tear."
		dialog[15] = "Little tourist boy...[TURNLEFT]"
		dialog[16] = "I want you to find these artifacts. They belong in the museum, to be appreciated by everyone on the island."
		dialog[17] = "Let's start with searching the Gull Grotto... A fish so large must be easy to find. And if we do, we'll find the Carp's tear.[DONE]"
		scrYesNoEnd()
	}
	}
	if global.searchTheCave = true
	{
		
		record_pos = 20;
// Make the follower follow the player based on the recorded position

x = oProt.pos_x[record_pos];
y = oProt.pos_y[record_pos];




	}
}

if room = rCavern && trident = true
{
		if notagain = false
		{
		scrYesNoStart()
		dialog[0] = "This is the symbol of a trident. It has represented the ocean for centuries. Maybe even longer."
		dialog[1] = "I believe this is the tomb. Tourist..."
		dialog[2] = "I need you to sing. Sing a song about the ocean, the waves and sea."
		dialog[3] = "Do it, and the path will reveal itself.[YesNo][notagain]"
		scrYesNoEnd()
		}
		if yes = false
		{
		scrYesNoStart()
		createtext = false
		trident = false
		show_debug_message("NEGATGIVE")
		notagain = false
		dialog[0] = "Huh. Such a negative energy."
		scrYesNoEnd()
		}
		
		if yes = true
		{
		singing = true	
			if doneSinging = true
			{
				global.cutscene = false
				oProt.image_alpha = 1
				oProt.disable = false
				scrYesNoStart()
				dialog[0] = "Bwahahaha! Why did you think that would work, little choir boy?"
				dialog[1] = "Such a bad voice."
				dialog[2] = "I'll move this monument to the side. Wanna help by singning a new song?"
				dialog[3] = "Bwahahaha![moveMonument]"
				scrYesNoEnd()			
			}
		}


	if instance_exists(oText)
	{
		var pos = string_pos("[moveMonument]", oText.textmessage);
		if (pos > 0){moveMonument = true}
	}
	if instance_exists(oText)
	{
		var pos = string_pos("[notagain]", oText.textmessage);
		if (pos > 0){notagain = true}
	}

	if moveMonument = true
	{
		if x < oStoneMonument.x +25
		{
			x+=1
		}
		else
		{
			if y > oStoneMonument.y
			{
				y-=1
			}
			else
			{
				if move > 0
				{
					if !audio_is_playing(soMove)
					{
						audio_play_sound(soMove,1,false)
					}
				    oStoneMonument.x -= 0.5
					x-=0.5
					move -=1
				}
				if move <=0
				{
				instance_destroy(oText)
				moveMonument = false
				global.movedMonument = true
				notagain = false
				trident = false
				}
			}
		}
	
	}
}