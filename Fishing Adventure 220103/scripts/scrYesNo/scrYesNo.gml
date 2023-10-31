// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scrYesNoStart(){

	array_delete(dialog,0,array_length(dialog))
}

function scrYesNoEnd(){
	if createtext = false
	{
			for (var i = 0; i < array_length(dialog); ++i) {
			  scrNewTextbox(dialog[i], 0)
			  //show_debug_message("LOOP2")
			  }
			  
	}

				yes = -1
			  createtext = true
}