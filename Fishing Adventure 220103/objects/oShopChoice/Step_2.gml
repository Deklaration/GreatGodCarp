if (live_call()) return live_result;
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

