depth =-y;

scrTalkToNPC()

if talking = true && createtext = false
{
	scrNewTextbox(dialog[0], 0)
	createtext = true
}

if talking = true && instance_exists(oText)
{
	oText.NPC = self
}

if !instance_exists(oText)
{
	talking = false
	createtext = false
}