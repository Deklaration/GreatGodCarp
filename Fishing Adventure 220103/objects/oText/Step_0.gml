if (live_call()) return live_result;
if instance_exists(oProt)
{
oProt.image_speed = 0
}

typist.sound(talkingSound,20,0.6,1.1,1)

typist.function_per_char(function(_element, _position, _typist)
{
	mouthmovement+=0.3
})

if showFace = true
{
faceindex = NPC.face
faceindex_angry = NPC.faceAngry
faceindex_sad = NPC.faceSad
mouthindex = NPC.mouthmove
mouthindex_sad = NPC.mouthmoveSad
}

lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textspeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

if facescale < 1
{
	facescale +=0.1
}

if textplace < 65
{
	textplace +=5
}

//show_debug_message(string("gettinggear") + string(gettinggear))
//show_debug_message(string("gotgear") + string(gotgear))

if gettinggear = false || gotgear = true
{
	if keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_b)
	{

		if typist.get_state(1)
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
			typist.in(5,0)
		}
	}
}
if gettinggear = true
{
	if keyboard_check_pressed(global.key_a) || keyboard_check_pressed(global.key_b)
	{
		if typist.get_state(1)
		{
			showGear = true
		}
		else
		{
			typist.in(5,0)
			showGear = true
		}
	}
}

//Ändra ansiktsuttryck

if showFace = true
{
//Arg
var pos = string_pos("[angry]", textmessage);
if (pos > 0) {faceindex = faceindex_angry;}

//Ledsen
var pos = string_pos("[sad]", textmessage);
if (pos > 0) {faceindex = faceindex_sad; mouthindex = mouthindex_sad}
}


//Ja eller nej

var pos = string_pos("[YesNo]", textmessage);
if (pos > 0) && !instance_exists(oYesNo) {instance_create_depth(0,0,0,oYesNo,{otherObject : NPC})}