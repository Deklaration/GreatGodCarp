if global.gotMurkMunchRecipe = false
{
dialog[0] = "Huhuh, I bet you want some better bait than that safety pin, right?"
dialog[1] = "Bring me some bait recipes, and I'll fix ya' up!"
dialog[2] = "I've heard that the old woman who lives on by the forest knows how to cook the"
dialog[3] = "\n[fTextboxHugeShadow][fa_center][shake]MURK MUNCH[/shake][fTextboxShadow]"
dialog[4] = "Sorry for yelling. I just love the stuff."
dialog[5] = "It attracts fish found in dark or muddy environments. The real nasty ones!"
dialog[6] = "Bring me the recipe and I'll make sure that all your [fTextboxHugeShadow][shake]MURK MUNCH[/shake][fTextboxShadow] needs are filled!"
}

if global.gotMurkMunchRecipe = true && global.unlockedMurkMunch = false
{
dialog[0] = "That's it! That's the old hags recipe!\NGimme gimme gimme!"
dialog[1] = "She didn't give you a hard time right? She's quite a tease."
dialog[2] = "But she makes a mean whisklash soup, lemme tell ya' that!"
dialog[3] = "Now, here we go. Take this!" + scrGearInDialog("MURK MUNCH!",oBait,enumBait.MurkMunch,sBaitIcon,2,0,1,false)
dialog[4] = "That one is on the house. Gotta pay for more! See ya'!"
}

global.unlockedMurkMunch = true
global.findRecipe_MurkMunch = true

if global.gotMurkMunchRecipe = false
{
array_push(oGame.quest,"Find the witch!!")
}

oBaitShop.talking = false
createtext = false
