depth =-y;

scrTalkToNPC()

var blink = irandom_range(1,100)
if blink > 98 {image_index = 1}
if blink < 15 {image_index = 0}

if talking = true && global.findTheLumberjack = true
{
	if global.findTheCarpenter = false
	{
		scrRemoveAndAddQuest("Get an axe!","To the carpenter!")
	}
	global.findTheCarpenter = true
	scrNewDialog()
	dialog[0] = "Go to the carpenter. He's a grumpy old fart, but he'll help you out."
}