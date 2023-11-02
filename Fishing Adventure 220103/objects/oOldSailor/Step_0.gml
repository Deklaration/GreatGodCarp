depth =-y;

scrTalkToNPC()

if global.searchedTheCave = true
{
	scrNewDialog()
	dialog[0] = "You're looking for a boat, that's right?"
dialog[1] = "Aren't we all... Nothing encapsulates the bravery of man like a boat can..."
dialog[2] = "I'm too old to sail. I sold my boat a long time ago."
dialog[3] = "Well, except for this gig. It doesn't do me any good. It's yours if you want it." 
dialog[4] = "Although, it's not water worthy in its current condition. Haven't been at sea for decades."
dialog[5] = "But if you get some gear, I bet you can get it in decent condition. It just needs some love."
dialog[6] = "And a sail, some tar and an anchor!"

if talking = true && global.findSail = false
{
	array_push(oGame.quest,"Find a sail!")
	array_push(oGame.quest,"Find some tar!")
	array_push(oGame.quest,"Find an anchor!")
global.findSail = true
global.findTar = true
global.findAnchor = true
}
}