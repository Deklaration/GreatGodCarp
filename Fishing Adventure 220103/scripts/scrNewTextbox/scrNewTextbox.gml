/// @desc scrNewTextbox(text,textboxsprite)
/// @param text
/// @param background

function scrNewTextbox(argument0, argument1){


var _obj;

	if instance_exists(oText)
	{
		_obj = oTextQueued	
	}
	else
	{
	_obj = oText
	}
	
	with instance_create_layer(0,0,"Instances",_obj,{NPC : id} )
	{
		textmessage = argument[0]
		if instance_exists(other)
		{
			originInstance = other.id
		}
		
		else 
		{
			originInstance = noone
		}
	
		if argument_count > 1
		{
			background = argument[1]
		}
	
		else	
		{
			background = 1
		}
	
	}	

}



function scrNewTextboxSign(argument0, argument1){


var _obj;

	if instance_exists(oText)
	{
		_obj = oTextQueuedSign	
	}
	else
	{
	_obj = oTextSign
	}
	
	with instance_create_layer(0,0,"Instances",_obj)
	{
		textmessage = argument[0]
		if instance_exists(other)
		{
			originInstance = other.id
		}
		
		else 
		{
			originInstance = noone
		}
	
		if argument_count > 1
		{
			background = argument[1]
		}
	
		else	
		{
			background = 1
		}
	
	}	

}