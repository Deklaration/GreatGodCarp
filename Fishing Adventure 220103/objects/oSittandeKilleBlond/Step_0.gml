depth =-y;



if global.daugava_set = 5 || global.daugava_set = 6
{
dialog[0] = "You actually caught a fish?"
dialog[1] = "I can't believe it! I've been at it for [shake]YEARS[/shake]!"
dialog[2] = "Even since the fish all..."
dialog[3] = "Well... disappeared."
dialog[4] = "Welcome to the island, I guess."
}



scrTalkToNPC()





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
