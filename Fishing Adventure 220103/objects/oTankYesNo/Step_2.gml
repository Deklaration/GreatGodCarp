if (live_call()) return live_result;
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

if fishalpha < 1
{
	fishalpha +=0.05
}

/*
if !instance_exists(oText)
{
	instance_destroy(id)
	global.cutscene = false
	global.key_b = b_button
}