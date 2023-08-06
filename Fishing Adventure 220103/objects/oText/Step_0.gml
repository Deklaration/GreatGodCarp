if instance_exists(oProt)
{
oProt.image_speed = 0
}
text = scrStringWrap(textmessage,x2Target-x1Target-textplace-15,"\n",true)

faceindex = NPC.face
mouthindex = NPC.mouthmove

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textspeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

if facescale < 1
{
	facescale +=0.1
}

if textplace < 65//205
{
	textplace +=5//20.5
}

if keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_b)
{
    var _messageLenght = string_length(text)
	if textProgress >= _messageLenght
	{
		if instance_exists(oTextQueued)
		{
			with (oTextQueued) ticket--;
		}
		oMusic.intensity = 1
		oGame.textboxtimer = true
		if instance_exists(oGeneratorFaceIndex)
		{
		instance_destroy(oGeneratorFaceIndex)
		}
		instance_destroy()
	}
	else
	{
		if (textProgress > 2)
		{
			x1 = x1Target
			x2 = x2Target
			textplace = 65
			facescale = 1
			textProgress = _messageLenght
		}
	}
}

//Rör munnen om texten går
if textProgress < string_length(text)
	{

		
		if talkingtimer > 5
		{
		talkingtimer = 0
		}
		talkingtimer +=0.4
		if mouthmovement <3
		{
		mouthmovement +=0.2
		}
		else
		{
			mouthmovement = 0
		}
	}
	else
	{
		mouthmovement = 0
	}
	
	if sw = 0 && generated = true
	{
	instance_create_depth(100,100,-100,oGeneratorFaceIndex)
	sw = 1
	}