depth = oWater.depth - 1
seaweed = irandom_range(1,4)

if seaweed = 1
{
	instance_create_depth(x,y-32,self.depth-1,oSeaweed)
}

image_speed = 0


//Det här är nog bortkastad tid. Värt att skapa ett gäng olika bottnar istället för att slumpgenerera? Då kan man anpassa hur hög botten är och långgrundhet etc etc

if global.markslump = 0
{
	image_index = irandom_range(1,4)
}
if global.markslump = 1
{
	image_index = irandom_range(1,6)
}

if global.markslump = 1 && !place_meeting(x-10,y,oMark) && place_meeting(x+70,y,oMark)
{
	image_index = 5
}

if global.markslump = 1 && place_meeting(x-10,y,oMark) && !place_meeting(x+70,y,oMark)
{
	image_index = 6
}

if global.markslump  = 2 && place_meeting(x-10,y,oMark) && place_meeting(x+70,y,oMark)
{
	image_index = 1
}

if global.markslump  = 2 && !place_meeting(x-10,y,oMark) && !place_meeting(x+70,y,oMark)
{
	image_index = 7
}