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
if talking = true && global.talkedToSkurt = 2 && global.findRecipe_MurkMunch = false
{
	shopActive = false
	//show_debug_message("finns1")
	instance_create_depth(x,y,0,oSkurtTalk)
	alpha = 0
}

if talking = true && global.gotMurkMunchRecipe = true && global.unlockedMurkMunch = false
{
	shopActive = false
	instance_create_depth(x,y,0,oSkurtTalk)
	alpha = 0
}

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

if wannaBuy = true
{
	if yes = false
	{
	choiceSpeedNo +=0.25
	choiceSpeedYes = 0	
	}
	else
	{	
	choiceSpeedYes +=0.25
	choiceSpeedNo = 0
	}
}
else
{
	yes = false
}
if fishalphaset = 0
{
	fishalpha = alpha
}
fishalpha = clamp(fishalpha,-0.1,0.15)
//show_debug_message(fishalpha)

//show_debug_message(global.fishcolor)