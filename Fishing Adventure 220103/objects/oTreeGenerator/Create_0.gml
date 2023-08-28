image_index = irandom(213)

image_blend = global.color[choose(13,14,15,12)]
image_speed = 0 
depth = -17-y
color = image_blend
trunk = 13

//CREATE TREE TRUNK SOM OBJECT MED TYP ETT TIOTAL OLIKA TRUNKS. OCH SEN KAN MAN KOLLA PLACE MEETING MED TOPPARNA PÅ TRUNKEN, OM DE INTE TRÄFFAR LÖVEN SÅ VÄLJS NYA LÖV UT. INTE TRUNKS. VISSA LÖV KANSKE INTE PASSAR ALLS, LIKSOM. men nu måste jag duscha å sen sova. 



if image_index < 29
{
trunk = choose(1,2,3)
}

if image_index >= 29 && image_index <67
{
trunk = 4
}

if image_index >= 67 && image_index <112
{
trunk = choose(5,6,7)
}

if image_index >= 112 && image_index <171
{
trunk = choose(8,9,10)
}

if image_index >= 171 && image_index <189
{
trunk = choose(11,12)
}


if image_index = 110
{
trunk = 0
}

trunkobject = instance_create_depth(x,y,self,oTrunk)

trunkobject.image_index = trunk
	