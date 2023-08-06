if global.cutscene = false
{
	instance_change(oProt,true)
}


depth = -y;


//Cutscene 1, båten kommer in och man går av.

if oShip.framme = false
{
	x-=1
}
if oShip.framme = true
{
	y+=1
}
if y > 1149
{
	oMrDaugava.talking = true
	global.cutscene = false
}