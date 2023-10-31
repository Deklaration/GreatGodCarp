// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrLumberjacks(){
	if (live_call()) return live_result;
	if talking = true
	{
		if global.firstLumberjack = 0 
		{
			global.firstLumberjack = object_get_name(object_index)
		}
	}

		if global.firstLumberjack = object_get_name(object_index)
		{
			array_delete(dialog,0,array_length(dialog))
			dialog[0] = "This is a great way to stay in shape!"
			dialog[1] = "I'm only chopping wood to be get my wife back."
		}
		if global.firstLumberjack != object_get_name(object_index) && global.firstLumberjack != 0
		{
			array_delete(dialog,0,array_length(dialog))
			dialog[0] = "I'm also chopping wood to get his wife back."
		}


}