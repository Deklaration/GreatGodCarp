image_alpha = 1
talking = false
createtext = false
face = sDaugavaPortrait
mouthmove = sDaugavaMouth
pitch = 1
image_speed = 0
mask_index = sDaugavaMask
image_xscale = 1.2
image_yscale = 1.2

//ENGLISH
if global.language = "English"
{
//Första samtalet
dialog[0] = "Oh! A tourist! Oh! A tourist! [sArrow] Oh! A tourist!Oh! A tourist!Oh! A tourist!Oh! A tourist!Oh! A tourist!Oh! A tourist!Oh! A tourist!Oh! A tourist!Oh! A tourist!"
dialog[1] = "Welcome to [wave][rainbow]Pisc Island[/rainbow][/wave], the fishing paradise!!"
dialog[2] = "..."
dialog[3] = "[shake]What?[/shake] You're not a tourist? You just fell from the sky?"
dialog[4] = "You're a pretty lucky guy to land here on [rainbow]Pisc Island[/rainbow]!"
dialog[5] = "I don't know if you've noticed, but this island isn't really one it once was... Maybe a lucky guy like you could help us out!"
dialog[6] = "Follow me, sky guy!"

//Man pratar med honom inne på AquaVista
dialog[7] = "Welcome to [c_red]AquaVista! [c_black]This used to be a thriving aquarium, just a few years ago. But now..."
dialog[8] = "It's all empty! Even though we have "
dialog[9] = "Let me just hook you up with a fishing rod, bait and our official Fishing guide."
dialog[10] = "Here, take these with you. I made them myself!"
dialog[11] = "No need to thank me, I love arts and crafts. Good luck out there!"
dialog[12] = "Now what? Do you need help fishing? I thought you guys were experts!"
dialog[13] = "Just go to the water and throw out a line!"
dialog[14] = "You can change your gear by opening the fishing guide with " + string(oGame.keyboard[global.key_pause]) +"!"
}
/*
//ENGLISH
if global.language = "English"
{
dialog[0] = "Welcome to Puddle Town! The most southern town of Pisc Island!"
dialog[1] = "I didn't see you at the registration. Do you have your gear?"
dialog[2] = "What? You fell from the sky?"
dialog[3] = "I don't really care how you got here. I'm busy with the FISHING COMPETITION. You're in, right?"
dialog[4] = "The rules are simple, the one who catches the biggest fish within a week is declared the winner and is the Grand fishing master!"
dialog[5] = "Let me just hook you up with a fishing rod, bait and our official Fishing guide."
dialog[6] = "..."
dialog[7] = "I'm terribly sorry, but I guess we're all out of gear. Are you sure you signed up for this?"
dialog[8] = "Here, take these with you. I made them myself!"
dialog[9] = "No need to thank me, I love arts and crafts. Good luck out there!"
dialog[10] = "Now what? Do you need help fishing? I thought you guys were experts!"
dialog[11] = "Just go to the water and throw out a line!"
dialog[12] = "You can change your gear by opening the fishing guide with " + string(oGame.keyboard[global.key_pause]) +"!"
}












if global.language = "Swedish"
{
dialog[0] = "Välkommen till Pölköping! Den södraste staden på Piscö!"
dialog[1] = "Jag såg dig inte på incheckningen. Har du alla grejer?"
dialog[2] = "What? You fell from the sky?"
dialog[3] = "I don't really care how you got here. I'm busy with the FISHING COMPETITION. You're in, right?"
dialog[4] = "The rules are simple, the one who catches the biggest fish within a week is declared the winner and is the Grand fishing master!"
dialog[5] = "Let me just hook you up with a fishing rod, bait and our official Fishing guide."
dialog[6] = "..."
dialog[7] = "I'm terribly sorry, but I guess we're all out of gear. Are you sure you signed up for this?"
dialog[8] = "Here, take these with you. I made them myself!"
dialog[9] = "No need to thank me, I love arts and crafts. Good luck out there!"
dialog[10] = "Now what? Do you need help fishing? I thought you guys were experts!"
dialog[11] = "Just go to the water and throw out a line!"
}