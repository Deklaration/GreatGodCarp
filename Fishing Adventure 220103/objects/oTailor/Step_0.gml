depth =-y;

scrTalkToNPC()

if global.findSail = true && global.gotSail = false
{
	scrNewDialog()
	dialog[0] = "Hey there little fellow! What's that?"
	dialog[0] = "You're looking for a sail?"
	dialog[0] = "Sure thing! You've come to the right place!"
	dialog[0] = "Hand over 250 fishdollars, and the sail is all yours![YesNo]"
	
	if yes = false
	{
		scrYesNoStart()
		dialog[0] = "You poor excuse of a man."
		scrYesNoEnd()
	}
	if yes = true
	{
		if global.gold >= 250
		{
		scrYesNoStart()
		dialog[0] = "Great! Here you go!"
		global.gotSail = true	
		scrInventoryAdd(oKeyInventory,enumItem.Sail)
		instance_create_depth(x,y,0,oGettingItems,{item:enumItem.Sail,parent:noone})
		global.gold -=250
		scrYesNoEnd()
		}
		else
		{
		scrYesNoStart()
		dialog[0] = "Don't mess around! You can't afford it!!"
		scrYesNoEnd()
		}
		
	}
}

if global.gotSail = true
{
scrNewDialog()
dialog[0] = "How's that sail working out for you?"
}