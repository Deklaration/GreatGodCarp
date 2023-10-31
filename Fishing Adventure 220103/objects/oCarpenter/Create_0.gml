image_alpha = 1
talking = false
createtext = false
//face = sNPCface2
mouthmove = sRunePortraitMouth

if global.findTheCarpenter = true
{
dialog[0] = "Huh... Never seen you around before. Hi! Welcome!"   
dialog[1] = "What's that? You need a little bunny house? With cute wallpapers?"     
dialog[2] = "[wave]I love it![/wave]"     
dialog[3] = "That sounds amazing! Of course I'll help you out!"     
dialog[4] = "What? You heard I was grumpy? Oh, don't listen to those lumberjacks. We have a history, since they always [shake]hog all wood[/shake]!"     
dialog[5] = "I'm the only carpenter here on [wave][rainbow]Pisc Island[/wave][/rainbow], but I only get to work with driftwood."     
dialog[6] = "Like, I would love to build a great fishing rod, if I just had some decent wood..."   
dialog[7] = "But a bunny house! I bet my driftwood will do just fine for that! Come back later, I'll have to get started!"
}

if global.findTheCarpenter = false
{
dialog[0] = "Hm... I think this will do... "	
}