//if (live_call()) return live_result;
if global.baitshopUnlock = false
{
instance_create_depth(x,y,depth,oBaitshopClosed)
instance_destroy(self)
}
dialog[0] = "Grub grub for fishies tub tub"
dialog[1] = "Wanna buy? [shake]How many[/shake]?"
dialog[2] = "Mmmm, that's (THIS IS ERROR) money! Let's buy, right?"
dialog[3] = "[wave]Thaaank![/wave]"
dialog[4] = "[shake]TOO POOR TOO POOR![/shake]"
dialog[5] = "[shake]HEY ARE YOU PULLING MY CASE?![/shake]"
shopActive = false
image_index = 2
image_speed = 0
global.gold = 100
yes = false
place = 1
b_button = global.key_b
talking = false
createtext = false
mouthmove = sRunePortraitMouth
face = sRunePortrait
pitch = 0.7
rowLenght = 8
depth = -y
alpha = 1
timer = 30
y1target = 40
y2target = 182
y1 = 200
y2 = 352
howMany = false
antal = 1
activeSet = false
color = 0
antalSave = antal
rightColor = irandom(18)
leftColor = irandom(18)
leftArrowYPos =0
rightArrowYPos =0
wannaBuy = false
choiceSpeedYes = 0
choiceSpeedNo = 0
choice = 0
created2 = false
fishalphaset = 0
setRandom = false
fishalpha = 0