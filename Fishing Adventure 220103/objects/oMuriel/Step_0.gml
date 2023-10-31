depth =-y;
if (live_call()) return live_result;


	scrTalkToNPC()

if global.findAGoodShovel = true && global.gotAGoodShovel = false 
{

	if yes = false
	{
	scrYesNoStart()
	dialog[0] = "Such a shy little boy."
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
			dialog[0] = "Wow!"
			dialog[1] = "That was awful!"
			dialog[2] = "Bet you feel pretty embarrassed now! Go on, take the shovel now, little choir boy![gettinggear]" + scrGearInDialog("A GOOD SHOVEL",oKeyInventory,enumItem.Shovel,sItemsIcon,1,0,1,false)
			global.gotAGoodShovel = true
			scrInventoryAdd(oKeyInventory,enumItem.Shovel)
			scrYesNoEnd()			
		}
	}
}


if global.gotAGoodShovel = true
{
	scrNewDialog()
	dialog[0] = "I miss my shovel."
}

if global.findAGoodShovel = true && global.gotAGoodShovel = false && yes =-1
{
scrNewDialog()
dialog[0] = "What's that? A shovel, you say?"
dialog[1] = "Yeah, but I kinda need it for myself, you know?"
dialog[2] = "How about this? Sing me a song and I'll promise to lend you my shovel. Deal?[YesNo]"
}

if global.findTheSecretCave = true && global.foundTheSecretCave = false
{
scrNewDialog()
dialog[0] = "The secret cave? You're talking about Gull Grotto?"
dialog[1] = "I got lucky once. But it was so dark, that I couldn't see anything."
dialog[2] = "Next time, I'm gonna make sure to bring a light!"
}