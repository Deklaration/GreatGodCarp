if place_meeting(x,y,oProt) && global.searchedTheCave = false
{
	cutscene = true
}

if cutscene = true
{
global.cutscene = true

	oProt.image_index = 0
}

if global.searchedTheCave = true
{
global.cutscene = false
}


if instance_exists(oText)
	{

		var done = string_pos("DONE", oText.textmessage);
		if (done > 0) && global.searchedTheCave = false
		{
			global.cutscene = false
			cutscene = false
			global.searchedTheCave = true
			array_push(oGame.quest,"Find the stick artefact.")
			array_push(oGame.quest,"Find Carp's tear.")
			array_push(oGame.quest,"Find the diving gear.")
			//scrRemoveAndAddQuest()
		}
	}