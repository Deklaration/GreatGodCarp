if (live_call()) return live_result;

//if shopActive = true
//{
//	depth = -1000
//	oProt.depth = -1001
//}
//else
//{
//	depth = -y
//}

if antalSave > antal
{
	leftColor = 12
	rightColor = 11
	leftArrowYPos =-1
	rightArrowYPos =0
}
if antalSave < antal
{
	rightColor = 12
	leftColor = 11
	rightArrowYPos =-1
	leftArrowYPos =0
}
if antalSave = antal
{
	rightArrowYPos =0
	leftArrowYPos =0
	rightColor = 11
	leftColor = 11
}

if side = "right"
{
antal = clamp(antal,0,999)
}
else
{
	if keyboard_check_pressed(global.key_up) && howMany = true
	{
		antal = oInventory.stacks[place]
	}
	if keyboard_check_pressed(global.key_down) && howMany = true
	{
		antal = 0
	}
antal = clamp(antal,0,oInventory.stacks[place])	
}
