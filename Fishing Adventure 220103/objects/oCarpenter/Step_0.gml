depth =-y;

scrTalkToNPC()

if talking = true && global.findTheCarpenter = true
{
	if global.waitForTheBunnyHouse = false
	{
		array_delete(oGame.quest,scrFindQuest("To the carpenter!"),1)
		array_push(oGame.quest,"Get decent wood!")
		array_push(oGame.quest,"Wait for the house!")
	}
	global.waitForTheBunnyHouse = true
	global.getThatWonk = true
}

if global.waitForTheBunnyHouse = true && global.waitedForTheBunnyHouse = false
{
scrNewDialog()	
dialog[0] = "It's not done yet!"   
dialog[1] = string("I need AT LEAST ") + string(round(oGame.bunnyHouseTimer)) + string(" more seconds!")   
dialog[2] = "Go fish or something, will ya'"   
}

if global.waitedForTheBunnyHouse = true
{
scrNewDialog()	
dialog[0] = "You're back! Great!"   
dialog[1] = "I think it turned out great! The bunny will love it. Here, take it!" + scrGearInDialog("A BUNNY HOUSE!",oKeyInventory,enumItem.Bunnyhouse,sItemsIcon,2,1,1,false)  
	if talking = true
	{
		scrRemoveAndAddQuest("Wait for the house!","Give the bunny its house!")
	}

}

if scrInventorySearch(oKeyInventory,enumItem.Bunnyhouse) !=-1
{
	scrNewDialog()	
dialog[0] = "You look great holding that house. Make sure to place it next to the fallen log, so the bunny will find it."
}