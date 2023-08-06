scrTalkToNPC()

if talking = true && createtext = false
{
	scrNewTextbox(dialog[0],0)
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

//Linan, betet och spöt

xline = self.x + flow
yline = self.y + flow
if flow = 0
{
	down = false
}
if flow = 1
{
	down = true
}

if down = false
{
	if subimageC < 5
	{
	subimageC += 0.07
	}
	flow += 0.01
}
if down = true
{
	if subimageC < 5
	{
	subimageC += 0.07
	}
	flow -= 0.01
}

if subimageC >= 5 && flow = 1
{
	subimageC = 0
}

change = irandom_range(0,150)
if change = 0
{
	image_index = 1
}
if change = 100
{
	image_index = 0
}
