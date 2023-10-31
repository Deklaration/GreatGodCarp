image_alpha = 1
talking = false
createtext = false
//face = sNPCface2
yes = -1
mouthmove = sRunePortraitMouth
singing = false
singingSpeed = 0
doneSinging = false
audio = false
turn = 1
doneSingingTimer = 30
timer = false


if global.findAGoodShovel = true && yes =-1
{
dialog[0] = "What's that? A shovel, you say?"
dialog[1] = "Yeah, but I kinda need it for myself, you know?"
dialog[2] = "How about this? Sing me a song and I'll promise to lend you my shovel. Deal?[YesNo]"
}

if global.findAGoodShovel = false
{
dialog[0] = "Hello dear."
}