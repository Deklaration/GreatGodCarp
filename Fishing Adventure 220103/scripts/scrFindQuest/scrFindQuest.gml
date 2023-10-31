// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrFindQuest(quest){

for (var i = 0; i < array_length(oGame.quest); ++i) {
    
	if oGame.quest[i] = string(quest)
	{
	return i
	}


}


}

function scrRemoveAndAddQuest(remove,add){
	if scrFindQuest(remove) > 0
	{
	array_delete(oGame.quest,scrFindQuest(remove),1)
	array_push(oGame.quest,add)
	}
}