oProt.image_index = 0
imagespeed +=1
if imagespeed >= 22
{
	imagespeed = 0
}

if scale < 6 
{
scale += 0.07
if scale > 3.5
{
	alpha2 +=0.07
	scale += 0.2
}
rot += 40
}
else 
{
alpha2 -=0.01
rot = 0
alpha -=0.02
}

if alpha = 0
{
	i+=1
	alpha2 = 0
	alpha = 2
	scale = 0
	toptexty = -30
	bottomtexty = 300
	gotgear = true
}

if bottomtexty > 220 && scale > 1
{
toptexty +=4
bottomtexty -=4
}