image_alpha = 1
talking = false
createtext = false
image_speed = 0.02
//face = sNPCface2
mouthmove = sRunePortraitMouth
drinkTimer = 60
transformTimer = 120
transformation = false
				
yes = -1

if global.findRecipe_MurkMunch = true
{
dialog[0] = "Hehehe! A bit of discarded eyes and a small batch of my moms old stew. This will do just fine!"
dialog[1] = "Oh! Who are you? A tourist?"
dialog[2] = "..."
dialog[3] = "You want the recipe for \n[fTextboxHugeShadow][shake]MURK MUNCH[/shake][fTextboxShadow]!?"
dialog[4] = "Sorry for yelling. I don't know why I did that."
dialog[5] = "It's an old family recipe. I can't just give it to a stranger like that!"
dialog[6] = "But if you help me out... Well... then I could make an exception..."
dialog[7] = "[color_10]Bring me three whisklashes[color_19]!"
dialog[8] = "It's that weird fish, with the whiskers. If you do, I'll help you out. You scratch up my back, and I'll scratch up yours!"
}

if global.findRecipe_MurkMunch = false
{
dialog[0] = "Hehehe! A bit of discarded eyes and a small batch of my moms old stew. This will do just fine!"
dialog[1] = "Oh! Who are you? A tourist?"
dialog[2] = "Leave me alone! You're invading my privacy!"
}

if global.gotMurkMunchRecipe = true && global.unlockedMurkMunch = false
{
dialog[0] = "Leave me alone..."
}

if global.unlockedMurkMunch = true
{
dialog[0] = "Hehehe! I was just joking about keeping the whisklash as pets!"
dialog[1] = "Hope I didn't scar you for life!"
dialog[2] = "[shake]Hohohohohohohohohoho[/shake]"
}