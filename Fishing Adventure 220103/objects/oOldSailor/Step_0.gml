if (live_call()) return live_result;
depth =-y;



if global.searchedTheCave = true && global.findSail = false
{
scrNewDialog()
dialog[0] = "You're looking for a boat, that's right?"
dialog[1] = "Aren't we all... Nothing encapsulates the bravery of man like a boat can..."
dialog[2] = "I'm too old to sail. I sold my boat a long time ago."
dialog[3] = "Well, except for this gig. It doesn't do me any good. It's yours if you want it." 
dialog[4] = "Although, it's not water worthy in its current condition. Haven't been at sea for decades."
dialog[5] = "But if you get some gear, I bet you can get it in decent condition. It just needs some love."
dialog[6] = "And a sail [sItemsIcon,6], some tar [sItemsIcon,7] and an anchor [sItemsIcon,8]!"

	if talking = true
	{
		array_push(oGame.quest,"Find a sail!")
		array_push(oGame.quest,"Find some tar!")
		array_push(oGame.quest,"Find an anchor!")
		global.findSail = true
		global.findTar = true
		global.findAnchor = true
		talking = false
	}
}

if global.findSail = true
{
	scrOldSailorTalk()
}

scrTalkToNPC()
/*
show_debug_message(string("findSail: ") + string(global.findSail))
show_debug_message(string("gotSail: ") + string(global.gotSail))
show_debug_message(string("gotTar: ") + string(global.gotTar))
show_debug_message(string("gotAnchor: ") + string(global.gotAnchor))
show_debug_message(string("gaveSail: ") + string(global.gaveSail))
show_debug_message(string("gaveTar: ") + string(global.gaveTar))
show_debug_message(string("gaveAnchor: ") + string(global.gaveAnchor))



