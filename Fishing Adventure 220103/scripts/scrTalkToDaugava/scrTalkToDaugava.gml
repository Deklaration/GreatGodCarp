// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrTalkToDaugava(_daugava_set,_next_daugava_set){

if global.daugava_set = _daugava_set && talking = true
{

if createtext = false
{
	image_index = 1
	
	for (var i = 0; i < array_length(dialog[global.daugava_set]); ++i) {
	    scrNewTextbox(dialog[global.daugava_set,i],0)
	}
	createtext = true
}

if instance_exists(oText)
{
	oText.NPC = self
}

if !instance_exists(oText)
{
	talking = false
	createtext = false
	global.daugava_set = _next_daugava_set
	image_index = 0
}
}

}