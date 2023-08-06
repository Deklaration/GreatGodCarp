
function scrGeneratorRandom()
{
randomclothes = irandom_range(1,6)
randomears = irandom_range(1,5)
randomeyes = irandom_range(1,11)
randomhair = irandom_range(1,17)
randommouth = irandom_range(1,9)
randomnose = irandom_range(1,9)
randomshoes = irandom_range(1,3)
randomclothescolor = irandom_range(0,25)
randomhaircolor = irandom_range(0,25)
randomshoescolor = irandom_range(0,25)
randomskincolor  = choose(4,8,9,10,11)
}

function scrGeneratorCreate(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor){
image_alpha = 1
image_speed = 0

x = x
y = y
talking = false
createtext = false
mouthmove = sRunePortraitMouth
face = sRunePortrait
pitch = 0.7
subimageC = 0
dir = irandom(2)
coltimer = 60
fiske = true
xscale = choose(-1,1)
flowchange = random_range(0.01,0.02)
down = false
walk = "down"
wa = 0
clothesxscale = 1
startroom = room
wd = 4

if place_meeting(x,y,oBridge)
{
	bridge = 25
}
else
 {
	 bridge = 0 
 }

if place_meeting(x,y-10,oWaterspot)
{
dir = 1
xscale = 1
}
else if place_meeting(x+10,y,oWaterspot)
{
dir = 2
xscale = 1
}
else if place_meeting(x-10,y,oWaterspot)
{
dir = 2
xscale = -1
}
else if place_meeting(x,y+10,oWaterspot)
{
dir = 0
xscale = 1
}

else
{
	fiske = false
}




timer = 10
dirchange = true

rodcolor = irandom(22)
rodlenght = random(4)
xline = self.x
yline = self.y + 20
flow = 0 
change = 100
subimage = 0


if fiske = true
{
scrGeneratorFiske(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor)
}
else
{
	scrGenerator(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor)
}

}


function scrGeneratorBeginStep()
{

if instance_exists(oProt)
{
if place_meeting(x+5,y,oProt) || 
place_meeting(x-5,y,oProt) || 
place_meeting(x,y+5,oProt) || 
place_meeting(x,y-5,oProt)
{
if keyboard_check(vk_anykey) && !instance_exists(oText)
{
	coltimer -=1
}


if coltimer <0
{
mask_index = sNothing
}
}
}

}

function scrGeneratorStep()
{
	depth =-y;
if room = startroom
{
	scrTalkToGeneratedNPC()
}

if fiske = false
{
	scrGeneratorWalking()
}

if dirchange = true
{
if dir = 0 || dir = 1
{
xline = self.x
yline = self.y// + 20
}

if dir = 2 && xscale = -1
{
xline = self.x - 40
yline = self.y// + 20
}

if dir = 2 && xscale = 1
{
xline = self.x + 40
yline = self.y// + 20
}
dirchange = false
}


if talking = true && createtext = false
{
	dirchange = true
	scrNewTextbox(dialog[0], 0)
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


//Linan, betet och spöt

xlineflow = xline + flow
ylineflow = yline + flow

flowchange = random_range(0.01,0.018)

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
	if subimageC < 6
	{
	subimageC += 0.07
	}
	flow += flowchange//0.01
}
if down = true
{
	if subimageC < 6
	{
	subimageC += 0.07
	}
	flow -= flowchange//0.01
}

if flow < 0 
{ 
	flow = 0
}
if flow > 1
{
	flow = 1
}

if subimageC >= 5 && flow = 1
{
	subimageC = 0
}

if instance_exists(oProt)
{
if (self.x > oProt.x+30 || self.x < oProt.x-30 || self.y > oProt.y+30 || self.y < oProt.y-30)
{
	mask_index = sRune
	coltimer = 60
}
}

}

function scrGeneratorRoomStart(){
	if startroom = room
{
	mask_index = sRune
	coltimer = 60
}
}

function scrGeneratorEndStep(){
	if global.paused = true
	{
		speed = 0
	}
}

function scrGeneratorDraw(){
	
//	draw_text(self.x,self.y+30,"random " + string(randomskincolor) + " reg: " + string(skincolor))
//	draw_text(x,y+50,coltimer)
//	draw_text(x,y+70,mask_index)
	
	if room = startroom
{
	scrDrawGeneratedSprite()

}
else
{
	mask_index = sNothing
	instance_destroy(self)
}

if fiske = true
{

if dir = 0
{
draw_set_color(global.color[rodcolor])
draw_line_width(self.x-0.5,self.y+9-20,self.x-0.5,self.y-rodlenght-20,2)
draw_set_color(c_black)
draw_sprite(sBodderCircle,subimageC,xline,ylineflow+35+bridge)
draw_line(self.x,self.y+1-rodlenght-20,xlineflow,ylineflow+35+bridge)
draw_sprite(sBobber,subimage,xlineflow,ylineflow+35+bridge)
}

if dir = 1 
{
	
}

if dir = 2 && xscale = 1
{
draw_set_color(global.color[rodcolor])
draw_line_width(self.x+6,self.y+9-20,self.x + 20,self.y-rodlenght-5-20,2)
draw_set_color(c_black)
draw_sprite(sBodderCircle,subimageC,xline,ylineflow+bridge)
draw_line(self.x+20,self.y-rodlenght-5-20,xlineflow,ylineflow+bridge)
draw_sprite(sBobber,subimage,xlineflow,ylineflow+bridge)
}

if dir = 2 && xscale = -1
{
draw_set_color(global.color[rodcolor])
draw_line_width(self.x-6,self.y+9-20,self.x - 20,self.y-5-20,2)
draw_set_color(c_black)
draw_sprite(sBodderCircle,subimageC,xline,ylineflow+bridge)
draw_line(self.x-20,self.y-rodlenght-5-20,xlineflow,ylineflow+bridge)
draw_sprite(sBobber,subimage,xlineflow,ylineflow+bridge)
}

}
}

/// @desc scrGenerator(6clothes,5ears,10eyes,12hair,9mouth,9nose,3shoes)

function scrGeneratorFiske(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor){

if _mouth = 8
{
	skincolor = 7
	_skincolor = 7
	haircolor = 11
	_haircolor = 11
}



clothesindex = _clothes
skincolor = _skincolor
clothescolor = _clothescolor
shoescolor = _shoescolor
haircolor = _haircolor


clothes[0] = -1
clothes[1] = sNPC_Clothes_F01
clothes[2] = sNPC_Clothes_F02
clothes[3] = sNPC_Clothes_F03
clothes[4] = sNPC_Clothes_F04
clothes[5] = sNPC_Clothes_F05
clothes[6] = sNPC_Clothes_F06

ears[0] = -1
ears[1] = sNPC_Ears01
ears[2] = sNPC_Ears02
ears[3] = sNPC_Ears03
ears[4] = sNPC_Ears04
ears[5] = sNPC_Ears05

eyes[0] = -1
eyes[1] = sNPC_Eyes01
eyes[2] = sNPC_Eyes02
eyes[3] = sNPC_Eyes03
eyes[4] = sNPC_Eyes04
eyes[5] = sNPC_Eyes05
eyes[6] = sNPC_Eyes06
eyes[7] = sNPC_Eyes07
eyes[8] = sNPC_Eyes08
eyes[9] = sNPC_Eyes09
eyes[10] = sNPC_Eyes10
eyes[11] = sNPC_Eyes11

hair[0] = -1
hair[1] = sNPC_Hair01
hair[2] = sNPC_Hair02
hair[3] = sNPC_Hair03
hair[4] = sNPC_Hair04
hair[5] = sNPC_Hair05
hair[6] = sNPC_Hair06
hair[7] = sNPC_Hair07
hair[8] = sNPC_Hair08
hair[9] = sNPC_Hair09
hair[10] = sNPC_Hair10
hair[11] = sNPC_Hair11
hair[12] = sNPC_Hair12
hair[13] = sNPC_Hair13
hair[14] = sNPC_Hair14
hair[15] = sNPC_Hair15
hair[16] = sNPC_Hair16
hair[17] = sNPC_Hair17



mouth[0] = -1
mouth[1] = sNPC_Mouth01
mouth[2] = sNPC_Mouth02
mouth[3] = sNPC_Mouth03
mouth[4] = sNPC_Mouth04
mouth[5] = sNPC_Mouth05
mouth[6] = sNPC_Mouth06
mouth[7] = sNPC_Mouth07
mouth[8] = sNPC_Mouth08
mouth[9] = sNPC_Mouth09


nose[0] = -1
nose[1] = sNPC_Nose01
nose[2] = sNPC_Nose02
nose[3] = sNPC_Nose03
nose[4] = sNPC_Nose04
nose[5] = sNPC_Nose05
nose[6] = sNPC_Nose06
nose[7] = sNPC_Nose07
nose[8] = sNPC_Nose08
nose[9] = sNPC_Nose09

shoes[0] = -1
shoes[1] = sNPC_Shoes01
shoes[2] = sNPC_Shoes02
shoes[3] = sNPC_Shoes03


clothessprite = clothes[_clothes]
earssprite = ears[_ears]
mouthsprite = mouth[_mouth]
nosesprite = nose[_nose]
shoessprite = shoes[_shoes]
hairsprite = hair[_hair]
eyessprite = eyes[_eyes]



}


function scrGenerator(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor){

if _mouth = 8
{
	skincolor = 7
	_skincolor = 7
	haircolor = 11
	_haircolor = 11
}



clothesindex = _clothes
skincolor = _skincolor
clothescolor = _clothescolor
shoescolor = _shoescolor
haircolor = _haircolor




clothes[0] = -1
clothes[1] = sNPC_Clothes01
clothes[2] = sNPC_Clothes02
clothes[3] = sNPC_Clothes03
clothes[4] = sNPC_Clothes04
clothes[5] = sNPC_Clothes05
clothes[6] = sNPC_Clothes06

ears[0] = -1
ears[1] = sNPC_Ears01
ears[2] = sNPC_Ears02
ears[3] = sNPC_Ears03
ears[4] = sNPC_Ears04
ears[5] = sNPC_Ears05

eyes[0] = -1
eyes[1] = sNPC_Eyes01
eyes[2] = sNPC_Eyes02
eyes[3] = sNPC_Eyes03
eyes[4] = sNPC_Eyes04
eyes[5] = sNPC_Eyes05
eyes[6] = sNPC_Eyes06
eyes[7] = sNPC_Eyes07
eyes[8] = sNPC_Eyes08
eyes[9] = sNPC_Eyes09
eyes[10] = sNPC_Eyes10
eyes[11] = sNPC_Eyes11

hair[0] = -1
hair[1] = sNPC_Hair01
hair[2] = sNPC_Hair02
hair[3] = sNPC_Hair03
hair[4] = sNPC_Hair04
hair[5] = sNPC_Hair05
hair[6] = sNPC_Hair06
hair[7] = sNPC_Hair07
hair[8] = sNPC_Hair08
hair[9] = sNPC_Hair09
hair[10] = sNPC_Hair10
hair[11] = sNPC_Hair11
hair[12] = sNPC_Hair12
hair[13] = sNPC_Hair13
hair[14] = sNPC_Hair14
hair[15] = sNPC_Hair15
hair[16] = sNPC_Hair16
hair[17] = sNPC_Hair17



mouth[0] = -1
mouth[1] = sNPC_Mouth01
mouth[2] = sNPC_Mouth02
mouth[3] = sNPC_Mouth03
mouth[4] = sNPC_Mouth04
mouth[5] = sNPC_Mouth05
mouth[6] = sNPC_Mouth06
mouth[7] = sNPC_Mouth07
mouth[8] = sNPC_Mouth08
mouth[9] = sNPC_Mouth09


nose[0] = -1
nose[1] = sNPC_Nose01
nose[2] = sNPC_Nose02
nose[3] = sNPC_Nose03
nose[4] = sNPC_Nose04
nose[5] = sNPC_Nose05
nose[6] = sNPC_Nose06
nose[7] = sNPC_Nose07
nose[8] = sNPC_Nose08
nose[9] = sNPC_Nose09

shoes[0] = -1
shoes[1] = sNPC_Shoes01
shoes[2] = sNPC_Shoes02
shoes[3] = sNPC_Shoes03


clothessprite = clothes[_clothes]
earssprite = ears[_ears]
mouthsprite = mouth[_mouth]
nosesprite = nose[_nose]
shoessprite = shoes[_shoes]
hairsprite = hair[_hair]
eyessprite = eyes[_eyes]



}

function scrDrawGeneratedSprite() {
	
	
draw_sprite_ext(sNPC_Shoes_Base,dir,x,y,xscale,1,0,global.color[skincolor],1)
draw_sprite_ext(shoessprite,dir,x,y,xscale,1,0,global.color[shoescolor],1)

if fiske = true
{
draw_sprite_ext(sNPC_Clothes_Base_F,dir,x,y,xscale,1,0,global.color[skincolor],1)
}
else
{
	draw_sprite_ext(sNPC_Clothes_Base,dir,x,y,clothesxscale,1,0,global.color[skincolor],1)
}
draw_sprite_ext(sNPC_Head_Base,dir,x,y,xscale,1,0,global.color[skincolor],1)

draw_sprite_ext(clothessprite,dir,x,y,clothesxscale,1,0,global.color[clothescolor],1)
draw_sprite_ext(mouthsprite,dir,x,y,xscale,1,0,global.color[skincolor],1)
draw_sprite_ext(nosesprite,dir,x,y,xscale,1,0,global.color[skincolor],1)
draw_sprite_ext(earssprite,dir,x,y,xscale,1,0,global.color[skincolor],1)
if hairsprite != sNPC_Hair01
{
draw_sprite_ext(eyessprite,dir,x,y,xscale,1,0,c_white,1)
draw_sprite_ext(hairsprite,dir,x,y,xscale,1,0,global.color[haircolor],1)
}
else
{
draw_sprite_ext(hairsprite,dir,x,y,xscale,1,0,global.color[skincolor],1)
draw_sprite_ext(eyessprite,dir,x,y,xscale,1,0,c_white,1)
}
}



function scrGeneratorWalking(){

if !instance_exists(oText) || room !=startroom || global.paused = false
{

walkingdir[0] = "down"
walkingdir[1] = "up"
walkingdir[2] = "left"
walkingdir[3] = "right"
walkingdir[4] = ""

if walk = ""
{
self.y = round(self.y)
self.x = round(self.x)
}

walkingdirectionchange = irandom(200)

if distance_to_object(oDoor) < 30
{
	mask_index = sNothing
}


if speed = 0
{

	if dir = 5 || dir = 6
	{
		dir = 2
	}
	
	if dir = 3
	{
		dir = 0
	}
	
	if dir = 4 
	{
		dir = 1
	}
}


if walkingdirectionchange = 200
{
wd = irandom(4)
}
if walkingdirectionchange < 3
{
	wa = 0
	wd = 4
}

walk = walkingdir[wd]


if global.paused = false
{

if walk = "down"
{
	
	if place_meeting(x,y+10,oWall) || place_meeting(x,y+10,oNPC) || place_meeting(x,y+10,oProt)
	{
		wd = 4
	}
	xscale = 1

	y+=0.3
	if wa < 4
	{
	wa +=0.05
	}
	if wa = 4
	{
	wa = 0
	}
	walkingani[0] = 0
	walkingani[1] = 3
	walkingani[2] = 0
	walkingani[3] = 3
	
	if walkingdirectionchange < 3
	{
	wa = 0
	}
	
	dir = walkingani[wa]
	if wa > 3
	{
		clothesxscale = -1
	}
	else
	{
		clothesxscale = 1
	}
}

if walk = "left"
{
	
	if place_meeting(x-10,y,oWall) || place_meeting(x-10,y,oNPC) || place_meeting(x-10,y,oProt)
	{
		wd = 4
	}
	
	xscale = -1
	clothesxscale = -1
	x-=0.3
	if wa < 4
	{
	wa +=0.05
	}
	if wa = 4
	{
	wa = 0
	}
	walkingani[0] = 2
	walkingani[1] = 5
	walkingani[2] = 2
	walkingani[3] = 6

	if walkingdirectionchange < 3
	{
	wa = 0
	}
	
	dir = walkingani[wa]

}


if walk = "up"
{
	
	if place_meeting(x,y-10,oWall) || place_meeting(x,y-10,oNPC) || place_meeting(x,y-10,oProt)
	{
		wd = 4
	}
	
	y-=0.3
	xscale = 1
	if wa < 4
	{
	wa +=0.05
	}
	if wa = 4
	{
	wa = 0
	}
	walkingani[0] = 1
	walkingani[1] = 4
	walkingani[2] = 1
	walkingani[3] = 4

	if walkingdirectionchange < 3
	{
	wa = 0
	}	

	dir = walkingani[wa]
	if wa > 3
	{
		clothesxscale = -1
	}
	else
	{
		clothesxscale = 1
	}
}



if walk = "right"
{
	
	if place_meeting(x+10,y,oWall) || place_meeting(x+10,y,oNPC) || place_meeting(x+10,y,oProt)
	{
		wd = 4
	}
	
	x+=0.3
	clothesxscale = 1
	xscale = 1
	if wa < 4
	{
	wa +=0.05
	}
	if wa = 4
	{
	wa = 0
	}
	walkingani[0] = 2
	walkingani[1] = 5
	walkingani[2] = 2
	walkingani[3] = 6
	
	if walkingdirectionchange < 3
	{
	wa = 0
	}
	
	dir = walkingani[wa]

}

if walkingdirectionchange < 3
{
	wa = 0
}
}//pause
}
}