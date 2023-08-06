
depth =-y;

	scrTalkToGeneratedNPC()
	scrGeneratorWalking()


if talking = true && createtext = false
{
	dirchange = true
	scrNewTextbox(dialog[0], 0)
	scrNewTextbox(dialog[1], 0)
	scrNewTextbox(dialog[2], 0)
	createtext = true
}

if talking = true && instance_exists(oText)
{
	oText.NPC = id
	oText.generated = true
}

if !instance_exists(oText)
{
	talking = false
	createtext = false
}

if instance_exists(oProt)
{
if (self.x > oProt.x+30 || self.x < oProt.x-30 || self.y > oProt.y+30 || self.y < oProt.y-30)
{
	mask_index = sRune
	coltimer = 60
}
}

