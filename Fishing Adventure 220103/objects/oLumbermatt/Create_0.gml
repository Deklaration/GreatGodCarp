image_alpha = 1
image_speed = 0
image_xscale =-1
talking = false
createtext = false
//face = sNPCface2
mouthmove = sRunePortraitMouth

if global.findTheLumberjack = true
{
dialog[0] = "Oh, hello there little guy! My name is LUMBER-MATT! Great to see you!"  
dialog[1] = "What's that? You need my axe? Why?"  
dialog[2] = "..."  
dialog[3] = "[angry][shake][fTextboxHugeShadow]WHAT?![/shake]"  
dialog[4] = "You're gonna chop down the tree to the forest!? Are you crazy?"   
dialog[5] = "[lumberpatt_angry]Not cool, dude!"  
dialog[6] = "[lumberzach_angry]Yeah! You can't do that!"   
dialog[7] = "There lives a bunny in there! You can't chop down her home!"  
dialog[8] = "You're gonna find another way to get past the log. Or like, give the bunny a new house. A better one!"   
dialog[9] = "[lumberpatt_angry]With carrot themed wallpapers!"  
dialog[10] = "[lumberzach_angry]Yeah, real cute ones!"   
dialog[11] = "Go to the carpenter. He's a grumpy old fart, but he'll help you out."
}
else
{
	dialog[0] = "Chopping wood is all I know."
	dialog[1] = "And advanced calculus."
}