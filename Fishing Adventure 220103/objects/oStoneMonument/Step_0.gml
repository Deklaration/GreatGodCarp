depth =-y
if global.movedMonument = false
{
scrTalkToObject()

if talking = true
{
	if instance_exists(oOphelia)
	{
	oOphelia.trident = true
	}
	talking = false
}
}
else
{
	x = 1224 -50
}