depth =-y;
if global.paused = false && global.textbox = false{

if (place_meeting(x-1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = -1)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =-1
		image_index = 2
		talking = true
		global.textbox = true
	}
}




if (place_meeting(x+1,y,oProt) && oProt.sprite_index = sProt_West && oProt.xscale = 1)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =1
		image_index = 2
		talking = true
		global.textbox = true
	}
	
}

if (place_meeting(x,y-1,oProt) && oProt.sprite_index = sProt_South)
{
		if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =1
		image_index = 1
		talking = true
		global.textbox = true
	}
	
}


if (place_meeting(x,y+1,oProt) && oProt.sprite_index = sProt_North)
{
	if keyboard_check_pressed(global.key_a)
	{
		oProt.image_index = 0
		image_xscale =1
		image_index = 0
		talking = true
		global.textbox = true
	}
}
}



if global.gotMurkMunchRecipe = true && global.unlockedMurkMunch = false && talking = true && createtext = false
{
array_delete(dialog,0,array_length(dialog))
dialog[0] = "Leave me alone..."
}

if talking = true && createtext = false && global.bringWhisklash = true && scrStackSearch(oInventory,enumFish.Whisklash) >= 3
{
	array_delete(dialog,0,array_length(dialog))
	dialog[0] = "That... [wave]that smell[/wave]!" 
	dialog[1] = "Oh, it's just you." 
	dialog[2] = "Ever heard of a shower?"
	dialog[3] = "So, do you have the whisklashes I need?[YesNo]"

}

if talking = true && global.bringWhisklash = true && yes !=-1 && global.gotMurkMunchRecipe = false && global.findTar = false
{
if yes = false
		{
			show_debug_message("hit")
			array_delete(dialog,0,array_length(dialog))
			dialog[0] = "Oh. Bring them here whenever you can."
			for (var i = 0; i < array_length(dialog); ++i) {
			  scrNewTextbox(dialog[i], 0)}
			  yes = -1
		}
	
if yes = true
		{
			array_delete(dialog,0,array_length(dialog))
			dialog[0] = "Wonderful! These will be great pets. I've always wanted a few whisklashes of my own. They are like underwater cats!"
			dialog[1] = "Wait... [fTextboxHugeShadow]These are [shake]dead[/shake]![fTextboxShadow]"
			dialog[2] = "[shake]Oh nononononononononononnoononononono\nnononononononononononononononononono\nnononononononononononononononononono\nnononononononononononononononononono[/shake]"
			dialog[3] = "Why didn't you put them in a bag of water or something..."
			dialog[4] = "This is [wobble]terrible[/wobble]..."
			dialog[5] = "Take the recipe and go. Leave me alone![RECIPE][MURK MUNCH RECIPE!]"// 
			dialog[6] = "Go on then, get out of here!"
			for (var i = 0; i < array_length(dialog); ++i) {
			  scrNewTextbox(dialog[i], 0)}
			  repeat(3)
			  {scrInventoryRemove(oInventory,enumFish.Whisklash)}
			  yes = -1
			  global.gotMurkMunchRecipe = true
		}
createtext = true
}

if talking = true && createtext = false
{
	for (var i = 0; i < array_length(dialog); ++i) {
	    scrNewTextbox(dialog[i], 0)
	}

	createtext = true
	global.bringWhisklash = true
}

if talking = true && instance_exists(oText)
{
	oText.NPC = self
}

if !instance_exists(oText)
{
	talking = false
	createtext = false
	//show_debug_message("DEADHALLÅ")
}



if global.findTar = true && global.gotTar = false
{
	scrNewDialog()	
	dialog[0] = "A bit of fish eye, tar and a little drop of poison..."
	dialog[1] = "Hey! It's the fish killer!"
	dialog[2] = "Didn't think you'd dare to show up here again! Gyahaha!"
	dialog[3] = "What's that? You want some of my precious tar?"
	dialog[4] = "Fine! Absolutely! AbsoTARly!! Just rob an old woman of her tar! That's how you like it, huh?"
	dialog[5] = "I'm not just gonna GIVE you some tar, I hope you know that. You're gonna have to do something."
	dialog[6] = "You'll have to be my little guinea pig..."
	dialog[7] = "Here! Taste some medicine, little tourist boy! Go on, have some![YesNo]"

	if yes = false
	{
	scrYesNoStart()
	createtext = false
	dialog[0] = "You'll never make progress in life with that attitude."
	dialog[1] = "Seize the day, and whatnot."
	scrYesNoEnd()
	}
	if yes = true
	{
	scrYesNoStart()
	createtext = false
	dialog[0] = "Hahaha! GREAT! No one has tasted my potions for AGES!"
	dialog[1] = "Open up, tourist boy![GUINEATRANSFORM]"
	scrYesNoEnd()
	}
}

if instance_exists(oText)
{
	var transform = string_pos("GUINEATRANSFORM", oText.textmessage);
	if (transform > 0) 
	{transformation = true}
	var getTar = string_pos("getTar", oText.textmessage);
	if (getTar > 0) 
	{
		if global.gotTar = false
		{
		instance_create_depth(x,y,0,oGettingItems,{item:enumItem.Tar,parent:noone})
		}
		global.gotTar = true
		}
}
if transformation = true
{
	global.cutscene = true
		show_debug_message("DRINK")
		drinkTimer -=d(1)
		if drinkTimer <0
		{
			show_debug_message("TRANSFORM")	
			transformTimer -=d(1)
				
			if transformTimer <0
			{
				scrYesNoStart()
				createtext = false
				if global.gotTar = false
				{
				dialog[0] = "Wonderful!! Look at you, little piggy boy!"
				dialog[1] = "I guess you can't carry any tar with those little feet."
				dialog[2] = "Don't worry! The effect isn't permanent. You'll get your tar once you're human again."
				dialog[3] = "See ya'!"
				}
				else
				{
				dialog[0] = "Beware of birds, and don't let the world 'burrow' you!"
				dialog[1] = "Gyahahahaha!"
				}
				scrYesNoEnd()
				oProt.sprite_index = sGuinea_South
				global.guineapig = true
				global.cutscene = false
				global.unlockedGuineapig = true
				transformation = false
			}
		}
	}
	
if global.unlockedGuineapig = true && global.gotTar = false
{
scrNewDialog()
dialog[0] = "Well, look at you. Back again. Guess you want some tar now, right?"
dialog[1] = "Sure, have some. And talk to me if you'd ever want to tranform again![getTar]"
}

if global.unlockedGuineapig = true && global.gotTar = true
{
	scrNewDialog()
	dialog[0] = "Hey, look who's back!"
	dialog[1] = "You want to be a little guinea pig again?[YesNo]"

	if yes = false
	{
	scrYesNoStart()
	createtext = false
	dialog[0] = "Fine! Be a boring human! I don't care!"
	scrYesNoEnd()
	}
	if yes = true
	{
	scrYesNoStart()
	createtext = false
	dialog[0] = "Open up, tourist boy![GUINEATRANSFORM]"
	scrYesNoEnd()
	}
}
