x = oBete.fiskid.x+35
y = oBete.fiskid.y

i = irandom_range(0,9)

goal = oBete.fiskid.fightsize
process = oBete.fiskid.catchratio

badpercent = process / goal 
percent = badpercent * 100 

if percent < 100
{
	//barprocess = ((fullbar / 100) * percent)
	barprocess = percent / 100
}

/*
if percent > 96 && goal < 30 //Tanken var att vara snäll, men trådarna korsars för mycket
{
	percent = 100
	barprocess = 1
	process = goal +1
}
*/

if percent >= 100
{
	barprocess = 1
}

show_debug_message("percent: " + string(percent))
show_debug_message(" barprocess: " + string(barprocess))
show_debug_message(" goal: " + string(goal))
show_debug_message(" process: " + string(process))