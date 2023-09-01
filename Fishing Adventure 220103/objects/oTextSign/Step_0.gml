if instance_exists(oProt)
{
oProt.image_speed = 0
oProt.image_index = 0
}
text = scrStringWrap(textmessage,x2Target-x1Target-textplace-15,"\n",true)

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textspeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)



if textplace < 10
{
	textplace +=5
}
//if textplace < 65
//{
//	textplace +=5
//}

if keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_b)
{
    var _messageLength = string_length(text)
	if textProgress >= _messageLength
	{
		if instance_exists(oTextQueuedSign)
		{
			with (oTextQueuedSign) ticket--;
		}
		
		oGame.textboxtimer = true
		instance_destroy()
	}
	else
	{
	   if !instance_exists(oTankChoice)
	   {
			if (textProgress > 2)
			{
				x1 = x1Target
				x2 = x2Target
				textplace = 10
				facescale = 1
				textProgress = _messageLength
			}
	   }
	}
}
