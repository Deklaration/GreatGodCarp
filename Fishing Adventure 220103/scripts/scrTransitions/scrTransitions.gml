//https://www.youtube.com/watch?v=TCwIerWM2iU&ab_channel=ShaunSpalding
	
	global.midTransition = false;
	global.roomTarget = -1;

//Placerar sequence i rummet
function scrTransitionPlaceSequence(_type){
if (layer_exists("transition")) layer_destroy("transition");
var _lay = layer_create(-9999,"transition");
layer_sequence_create(_lay,0,0,_type);
}

//Används för att gå från ett rum till ett annat. Kan använda olika in/ut-sekvenser
function scrTransitionsStart(_roomTarget, _typeOut, _typeIn)
{
		if room != rFiske
		{
		oProt.image_speed = 0;
		oProt.image_index = 0;
		}
		
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		scrTransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		scrTransitionPlaceSequence(_typeIn);
		layer_reset_target_room()
		
		
		
		return true;
	}
	else return false;
}

//I slutet av en "out"-sekvens
function scrTransitionChangeRoom()
{
	
	if room != rFiske
	{
	global.directionbeforefish = oProt.sprite_index
	global.xscalebeforefish = oProt.xscale
	global.nosebeforefish = oProt.nose
	global.clothesbeforefish = oProt.clothes
	global.nosecolorbeforefish = oProt.nosecolor
	global.clothescolorbeforefish = oProt.clothescolor
	}
	
	room_goto(global.roomTarget)
	global.midTransition = false;
	oGame.newroom = true
	oGame.newroomtimer = 200
	oGame.roomalpha = 1
}


//I slutet av en "in"-sekvens
function scrTransitionFinished()
{
	layer_sequence_destroy(self.elementID)
	global.midTransition = false;
}