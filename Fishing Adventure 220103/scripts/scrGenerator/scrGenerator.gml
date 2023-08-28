if (live_call()) return live_result;
function scrGeneratorRandom() //Ger slumpmässigt utvalda attribut
{
	
	if state = "walking"
	{
		randomize()
		randomclothes = irandom_range(1,5)
		randomears = irandom_range(1,5)
		randomeyes = 10//irandom_range(1,11)
		randomhair = irandom_range(1,15)
		randommouth = irandom_range(1,6)
		randomnose = irandom_range(1,7)
		randomshoes = irandom_range(1,3)
		randomclothescolor = choose(7,9,10,13,15,16,17,18)
		randomhaircolor = choose(0,3,4,5,6,31)
		randomshoescolor = choose(7,9,10,13,15,16,17,18)
		randomskincolor  = choose(2,3,4,5,6,30,31,2,2,30)
		scrGenerator(randomclothes,randomears,randomeyes,randomhair,randommouth,randomnose,randomshoes,randomskincolor,randomhaircolor,randomskincolor,randomskincolor)
	}
	
	if state = "sunbathing"
	{
		randomize()
		breathingtimer = 120
		breathing = 0
		headchange = 0
		sunchairchoice = irandom_range(0,3)
		bathingsuitcolor = global.color[irandom_range(7,18)]
		randomclothes = irandom_range(1,5)
		randomears = irandom_range(1,5)
		randomeyes = 4//irandom_range(1,11)
		randomhair = irandom_range(1,15)
		randommouth = irandom_range(1,6)
		randomnose = irandom_range(1,7)
		randomshoes = 0
		randomclothescolor = choose(7,9,10,13,15,16,17,18)
		randomhaircolor = choose(0,3,4,5,6,31)
		randomshoescolor = 0
		randomskincolor  = choose(2,3,4,5,6,30,31,2,2,30)
		scrGenerator(0,randomears,randomeyes,randomhair,randommouth,randomnose,1,randomskincolor,randomhaircolor,randomskincolor,randomskincolor)
	}
	
	if state = "swimming"
	{
		randomize()
		randomears = irandom_range(1,5)
		randomeyes = choose(0,10,10)
		randomhair = irandom_range(1,15)
		randommouth = irandom_range(1,6)
		randomnose = irandom_range(1,7)
		randomhaircolor = choose(0,3,4,5,6,31)
		randomskincolor  = choose(2,3,4,5,6,30,31,2,2,30)
		randomclothes = 0
		randomshoes = 0
		randomclothescolor = randomskincolor
		randomshoescolor = 0
		scrGenerator(0,randomears,randomeyes,randomhair,randommouth,randomnose,0,randomskincolor,randomhaircolor,0,randomskincolor)
		sprite_index = sNPC_Swimming_base
		image_speed = 0.2
		original_y = y;  // Save the initial position
		bob_speed = 0.05; // Speed at which the object bobs
		bob_height = 1;  // Maximum distance object moves up or down
		bob_timer = 0;    // A timer to determine position in the bobbing motion
		dir = 1
		badring = irandom_range(0,2)
	}
}



function scrGeneratorCreate(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor){
image_alpha = 1
image_speed = 0
mask_index = sNothing


global.numberOfTourists +=1 //Räknar hur många turister som finns
num = global.numberOfTourists //Ger denna ett nummer
scrGeneratorDialog()

if state = "sunbathing"
{
	hardbreathing = choose(true,false)
}
else
{
	hardbreathing = false
}

activate = false
x = x
y = y
talking = false
createtext = false
mouthmove = sRunePortraitMouth
face = sRunePortrait
pitch = 0.7
subimageC = 0
dir = irandom(2)
coltimer = 150
fiske = true
xscale = choose(-1,1)
savex = x
shakex = 0
flowchange = random_range(0.01,0.02)
down = false
walk = "down"
wa = 0
clothesxscale = 1
startroom = room
wd = 4

if state = "swimming"
{
	dir = 0
}

if place_meeting(x,y,oBridge)
{
	bridge = 25
}
else
 {
	 bridge = 0 
 }

/*
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
*/
fiske = false


//if place_meeting(x,y,oWall)
//{
//	instance_destroy(self)
//}

timer = 10
dirchange = true

rodcolor = irandom(22)
rodlenght = random(4)
xline = self.x
yline = self.y + 20
flow = 0 
change = 100
subimage = 0
xlineflow = xline + flow
ylineflow = yline + flow

if fiske = true
{
scrGeneratorFiske(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor)
}
if state = "walking"
{
scrGenerator(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor)
}



}


function scrGeneratorBeginStep()
{
	if instance_exists(oProt) && activate = true
	{	
		if place_meeting(x+5,y,oProt)	|| //Skakar så man kommer förbi
		place_meeting(x-5,y,oProt)		|| 
		place_meeting(x,y+5,oProt)		|| 
		place_meeting(x,y-5,oProt)
		{
			if keyboard_check(vk_anykey) && !instance_exists(oText)
			{
				coltimer -=1
			}
			else
			{
				coltimer = 150
			}

			if coltimer < 30 && coltimer > 0
			{
				if coltimer > 25
				{
				savex = x
				}
				shakex = random_range(-1,1)
			}

			if coltimer <0
			{
				x = savex
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

if state = "walking"
{
	scrGeneratorWalking()
}

if state = "swimming"
{
	bob_timer += bob_speed;
	y = original_y + sin(bob_timer) * bob_height;
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

if coltimer > 1
{
	image_alpha = 1
	mask_index = sRune
}
	


if talking = true && createtext = false
{
	dirchange = true
	
	if hardbreathing = false
	{
	scrNewTextbox(dialog[irandom_range(0,399)], 0)
	}
	
	if hardbreathing = true
	{
		scrNewTextbox(dialog[400], 0)
	}
	
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


//FISKE???
//Linan, betet och spöt
if fiske = true
{
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
}


if instance_exists(oProt) //Gubben blir hel igen när man går iväg
{
	if (self.x > oProt.x+30 || self.x < oProt.x-30 || self.y > oProt.y+30 || self.y < oProt.y-30)
	{
			mask_index = sRune
			coltimer = 150
	}
}

}

function scrGeneratorRoomStart(){
	if startroom = room && activate = true
	{
		mask_index = sRune
		coltimer = 150
	}
}

function scrGeneratorEndStep(){
	if global.paused = true
	{
		speed = 0
	}
}
function scrGeneratorDraw(){
	if state = "walking"
	{
		scrGeneratorDrawWalking()
	}
	if state = "swimming"
	{
		scrGeneratorDrawSwimming()
	}
	if state = "sunbathing"
	{
		scrGeneratorDrawSunbathing()
	}
}

function scrGeneratorDrawFishing(){

	if dir = 0
	{
	draw_set_color(global.color[rodcolor mod array_length(global.color)])
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
	draw_set_color(global.color[rodcolor mod array_length(global.color)])
	draw_line_width(self.x+6,self.y+9-20,self.x + 20,self.y-rodlenght-5-20,2)
	draw_set_color(c_black)
	draw_sprite(sBodderCircle,subimageC,xline,ylineflow+bridge)
	draw_line(self.x+20,self.y-rodlenght-5-20,xlineflow,ylineflow+bridge)
	draw_sprite(sBobber,subimage,xlineflow,ylineflow+bridge)
	}

	if dir = 2 && xscale = -1
	{
	draw_set_color(global.color[rodcolor mod array_length(global.color)])
	draw_line_width(self.x-6,self.y+9-20,self.x - 20,self.y-5-20,2)
	draw_set_color(c_black)
	draw_sprite(sBodderCircle,subimageC,xline,ylineflow+bridge)
	draw_line(self.x-20,self.y-rodlenght-5-20,xlineflow,ylineflow+bridge)
	draw_sprite(sBobber,subimage,xlineflow,ylineflow+bridge)
	}


}


function scrGeneratorDrawWalking() {
	
	draw_text(x,y+10,mouthsprite)
	
	draw_sprite_ext(sNPC_Shoes_Base,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(shoessprite,dir,x+shakex,y,xscale,1,0,global.color[shoescolor mod array_length(global.color)],1)

	if fiske = true
	{
	draw_sprite_ext(sNPC_Clothes_Base_F,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	}
	else
	{
		draw_sprite_ext(sNPC_Clothes_Base,dir,x+shakex,y,clothesxscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	}
	
	draw_sprite_ext(sNPC_Head_Base,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(clothessprite,dir,x+shakex,y,clothesxscale,1,0,global.color[clothescolor mod array_length(global.color)],1)
	
	if mouthsprite != sNPC_Mouth08 && mouthsprite != sNPC_Mouth03
	{
	draw_sprite_ext(mouthsprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(mouthsprite,dir,x+shakex,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)	
	}
	
	
	draw_sprite_ext(nosesprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(earssprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)

	if hairsprite != sNPC_Hair01
	{
	draw_sprite_ext(eyessprite,dir,x+shakex,y,xscale,1,0,c_white,1)
	draw_sprite_ext(hairsprite,dir,x+shakex,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(hairsprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(eyessprite,dir,x+shakex,y,xscale,1,0,c_white,1)
	}
}


function scrGeneratorDrawSwimming(){

	draw_sprite_ext(sNPC_Swimming_base,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	
	if mouthsprite != sNPC_Mouth08 && mouthsprite != sNPC_Mouth03
	{
	draw_sprite_ext(mouthsprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(mouthsprite,dir,x+shakex,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)	
	}
	
	draw_sprite_ext(nosesprite,dir,x,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	
	if hairsprite != sNPC_Hair01
	{
	draw_sprite_ext(eyessprite,dir,x+shakex,y,xscale,1,0,c_white,1)
	draw_sprite_ext(hairsprite,dir,x+shakex,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(hairsprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(eyessprite,dir,x+shakex,y,xscale,1,0,c_white,1)
	}
	
	draw_sprite_ext(hairsprite,dir,x,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)
	draw_sprite_ext(eyessprite,dir,x,y,xscale,1,0,c_white,1)
	draw_sprite_ext(sSwimming_badring,badring,x,y,xscale,1,0,c_white,1)

}
function scrGeneratorDrawSunbathing(){
	dir = 0
	if randomhair < 9
	{
		gender = 0
	}
	if randomhair > 8
	{
		gender = 1
	}
	
	if mouthsprite = sNPC_Mouth03
	{
		gender = 0
	}
	
	if hardbreathing = true
	{
	breathingtimer-=1
	if breathingtimer <0
	{
		breathing = 1
		headchange = 1
	}
	if breathingtimer < -120
	{
		breathing = 0
		headchange = 0
		breathingtimer = random_range(90,150)
	}
	}
	
	//image_speed = 0.2
	draw_sprite_ext(sSunchair,sunchairchoice,x,y+3,1,1,0,c_white,1)
	draw_sprite_ext(sNPC_Sunbathing_Body,breathing,x,y,1,1,0,global.color[skincolor mod array_length(global.color)],1)	
	draw_sprite_ext(sNPC_Sunbathing_Feet,0,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	
	if gender = 0
	{
	draw_sprite_ext(sBathingsuitMale,breathing,x+shakex,y,xscale,1,0,bathingsuitcolor,1)
	}
	else
	{
	draw_sprite_ext(sBathingsuitFemale,breathing,x+shakex,y,xscale,1,0,bathingsuitcolor,1)	
	}
	
	draw_sprite_ext(sNPC_Head_Base,dir,x,y+headchange,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	
	if mouthsprite != sNPC_Mouth08 && mouthsprite != sNPC_Mouth03
	{
	draw_sprite_ext(mouthsprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(mouthsprite,dir,x+shakex,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)	
	}
	
	draw_sprite_ext(nosesprite,dir,x,y+headchange,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(earssprite,dir,x,y+headchange,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	
	if hairsprite != sNPC_Hair01
	{
	draw_sprite_ext(eyessprite,dir,x+shakex,y,xscale,1,0,c_white,1)
	draw_sprite_ext(hairsprite,dir,x+shakex,y,xscale,1,0,global.color[haircolor mod array_length(global.color)],1)
	}
	else
	{
	draw_sprite_ext(hairsprite,dir,x+shakex,y,xscale,1,0,global.color[skincolor mod array_length(global.color)],1)
	draw_sprite_ext(eyessprite,dir,x+shakex,y,xscale,1,0,c_white,1)
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


clothessprite = clothes[_clothes mod array_length(clothes)]
earssprite = ears[_ears mod array_length(ears)]
mouthsprite = mouth[_mouth mod array_length(mouth)]
nosesprite = nose[_nose mod array_length(nose)]
shoessprite = shoes[_shoes mod array_length(shoes)]
hairsprite = hair[_hair mod array_length(hair)]
eyessprite = eyes[_eyes mod array_length(eyes)]



}


function scrGenerator(_clothes,_ears,_eyes,_hair,_mouth,_nose,_shoes,_clothescolor,_haircolor,_shoescolor,_skincolor){

if _mouth = 6
{
	skincolor = 2
	_skincolor = 2
	haircolor = 0
	_haircolor = 0
}

if _skincolor = 6 || _skincolor = 5
{
	haircolor = 25
	_haircolor = 25
}

if _haircolor = 0
{
	skincolor = 2
	_skincolor = 2
}

if (_mouth = 3 || _mouth = 6) && _hair > 8
{
	_mouth = choose(1,2,4,5)
}




clothesindex = _clothes
skincolor = _skincolor
clothescolor = _clothescolor
shoescolor = _shoescolor
haircolor = _haircolor




clothes[0] = sNothing
clothes[1] = sNPC_Clothes01
//clothes[2] = sNPC_Clothes02
clothes[2] = sNPC_Clothes03
clothes[3] = sNPC_Clothes04
clothes[4] = sNPC_Clothes05
clothes[5] = sNPC_Clothes06

ears[0] = sNothing
ears[1] = sNPC_Ears01
ears[2] = sNPC_Ears02
ears[3] = sNPC_Ears03
ears[4] = sNPC_Ears04
ears[5] = sNPC_Ears05

eyes[0] = sNPC_Eyes_goggles
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

hair[0] = sNothing
hair[1] = sNPC_Hair01
hair[2] = sNPC_Hair02
hair[3] = sNPC_Hair03
hair[4] = sNPC_Hair04
//hair[5] = sNPC_Hair05
hair[5] = sNPC_Hair06
hair[6] = sNPC_Hair07
//hair[8] = sNPC_Hair08
hair[7] = sNPC_Hair09
hair[8] = sNPC_Hair10
hair[9] = sNPC_Hair11
hair[10] = sNPC_Hair12
hair[11] = sNPC_Hair13
hair[12] = sNPC_Hair14
hair[13] = sNPC_Hair15
hair[14] = sNPC_Hair16
hair[15] = sNPC_Hair17



mouth[0] = sNothing
mouth[1] = sNPC_Mouth01
mouth[2] = sNPC_Mouth02
mouth[3] = sNPC_Mouth03
mouth[4] = sNPC_Mouth04
//mouth[5] = sNPC_Mouth05
mouth[5] = sNPC_Mouth06
//mouth[7] = sNPC_Mouth07
mouth[6] = sNPC_Mouth08
//mouth[9] = sNPC_Mouth09


nose[0] = sNothing
//nose[1] = sNPC_Nose01
nose[1] = sNPC_Nose02
nose[2] = sNPC_Nose03
nose[3] = sNPC_Nose04
nose[4] = sNPC_Nose05
nose[5] = sNPC_Nose06
//nose[7] = sNPC_Nose07
nose[6] = sNPC_Nose08
nose[7] = sNPC_Nose09

shoes[0] = sNothing
shoes[1] = sNPC_Shoes01
shoes[2] = sNPC_Shoes02
shoes[3] = sNPC_Shoes03


clothessprite = clothes[_clothes mod array_length(clothes)]
earssprite = ears[_ears mod array_length(ears)]
mouthsprite = mouth[_mouth mod array_length(mouth)]
nosesprite = nose[_nose mod array_length(nose)]
shoessprite = shoes[_shoes mod array_length(shoes)]
hairsprite = hair[_hair mod array_length(hair)]
eyessprite = eyes[_eyes mod array_length(eyes)]



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

function scrGeneratorDialog()
{
dialog[0] = "Isn't this island just breathtaking?";
dialog[1] = "I've never seen water so blue!";
dialog[2] = "The sunset here is truly something else.";
dialog[3] = "I've been to many islands, but this one's special.";
dialog[4] = "Do you know any good local restaurants?";
dialog[5] = "The sand between my toes feels amazing.";
dialog[6] = "I've heard there's a hidden waterfall nearby.";
dialog[7] = "It's so peaceful here, away from the city.";
dialog[8] = "This is my first time traveling alone!";
dialog[9] = "The local fruit is absolutely delicious.";
dialog[10] = "I've got the perfect spot for beach volleyball.";
dialog[11] = "Have you tried snorkeling here?";
dialog[12] = "I can't wait to send postcards from this place.";
dialog[13] = "I've met so many amazing people here.";
dialog[14] = "The island breeze is just perfect.";
dialog[15] = "I wish I could stay here forever.";
dialog[16] = "I've been collecting seashells. Want to see?";
dialog[17] = "The local music is so lively!";
dialog[18] = "This is my third trip to this island!";
dialog[19] = "Did you know there's a folklore about this place?";
dialog[20] = "I hope I get to see some dolphins!";
dialog[21] = "I'm here to escape the winter back home.";
dialog[22] = "The coconut water here is the best!";
dialog[23] = "I've been reading a lot by the beach.";
dialog[24] = "There's something magical about this place.";
dialog[25] = "I'm trying to learn the local language.";
dialog[26] = "The night sky here is a stargazer's dream.";
dialog[27] = "I heard there's a secret beach around.";
dialog[28] = "The islanders are so welcoming!";
dialog[29] = "Did you taste the local cuisine?";
dialog[30] = "I've booked a scuba diving session tomorrow.";
dialog[31] = "I've got the best tan of my life here.";
dialog[32] = "The tropical birds are so colorful!";
dialog[33] = "I've been writing my travel journal every day.";
dialog[34] = "I've taken so many photos, my phone's full!";
dialog[35] = "The island festival was such a blast!";
dialog[36] = "Every sunrise here is worth waking up for.";
dialog[37] = "Have you gone on any local tours?";
dialog[38] = "I'm looking for a good hiking spot.";
dialog[39] = "The tropical flowers smell divine.";
dialog[40] = "Have you been to the local market?";
dialog[41] = "I wish I could bottle up this island's air.";
dialog[42] = "I've found some incredible souvenirs.";
dialog[43] = "Do you know where I can rent a kayak?";
dialog[44] = "This is the perfect getaway destination.";
dialog[45] = "I've been learning to surf here.";
dialog[46] = "I'm so glad I packed my sunscreen!";
dialog[47] = "The local crafts are so unique.";
dialog[48] = "I'm on a mission to try all the local fruits.";
dialog[49] = "Have you seen the coral reefs?";
dialog[50] = "I've been waking up to the sound of waves.";
dialog[51] = "Do you know a good spot to watch turtles?";
dialog[52] = "I've heard there's a local dance tonight.";
dialog[53] = "The hammocks here are so comfy!";
dialog[54] = "I've been sipping on fresh juice every day.";
dialog[55] = "This is the perfect place to unplug.";
dialog[56] = "Do you have any book recommendations?";
dialog[57] = "Have you been to the island museum?";
dialog[58] = "I've been on a seafood diet here. Literally!";
dialog[59] = "I'm learning so much about island culture.";
dialog[60] = "The lagoons here are picture-perfect.";
dialog[61] = "Have you tried the local ice cream?";
dialog[62] = "I've been on a boat tour around the island.";
dialog[63] = "I've danced the night away at a beach party.";
dialog[64] = "Do you know any hidden gems around?";
dialog[65] = "I've spotted so many colorful fishes.";
dialog[66] = "I've been barefoot since I got here!";
dialog[67] = "The island vibes are just right.";
dialog[68] = "Have you been to the island spa?";
dialog[69] = "I've seen the most incredible marine life.";
dialog[70] = "I've been practicing yoga by the beach.";
dialog[71] = "The bonfire nights are so much fun!";
dialog[72] = "Do you have any island recommendations?";
dialog[73] = "I've been jamming with local musicians.";
dialog[74] = "The palm trees make for the best shade.";
dialog[75] = "I've been making friends with island cats.";
dialog[76] = "I'm planning to watch the moonrise tonight.";
dialog[77] = "I've got the perfect playlist for this place.";
dialog[78] = "Have you trekked to the island peak?";
dialog[79] = "The sound of the ocean is therapeutic.";
dialog[80] = "Have you tasted the island's signature dish?";
dialog[81] = "I'm learning to make local crafts.";
dialog[82] = "I've been having the most vivid dreams here.";
dialog[83] = "Have you visited the old island lighthouse?";
dialog[84] = "I've been dancing to island tunes.";
dialog[85] = "The full moon here is mesmerizing!";
dialog[86] = "Have you tried paddleboarding here?";
dialog[87] = "I've been binging on tropical smoothies.";
dialog[88] = "This is the best vacation I've ever had!";
dialog[89] = "I'm on a seafood spree!";
dialog[90] = "Have you been to the island's secret cave?";
dialog[91] = "I've been painting the island landscapes.";
dialog[92] = "The island nights are so romantic!";
dialog[93] = "I've been mingling with local artists.";
dialog[94] = "The salty air is so refreshing!";
dialog[95] = "Have you seen the island's old ruins?";
dialog[96] = "I've been listening to island legends.";
dialog[97] = "I'm planning a picnic by the sea.";
dialog[98] = "The island cafes are so quaint.";
dialog[99] = "I've found my paradise here!";
dialog[100] = "My sandals got stolen by a crab. Seen it?";
dialog[101] = "Tried to befriend a seagull. Worst idea ever.";
dialog[102] = "If I eat one more coconut, I'll turn into one.";
dialog[103] = "The WiFi here is slower than a sunburned turtle.";
dialog[104] = "Forgot my sunscreen. Now I'm a walking lobster.";
dialog[105] = "I tried surfing. The waves won.";
dialog[106] = "Bought a hat. A monkey took it. Welcome to the island.";
dialog[107] = "I did a rain dance. Now it won't stop. Oops.";
dialog[108] = "Island life rule: Sand gets EVERYWHERE.";
dialog[109] = "I tried to hitchhike. A coconut picked me up.";
dialog[110] = "Lost my map. Used a banana leaf. Close enough.";
dialog[111] = "Met a talking parrot. He wouldn't stop gossiping.";
dialog[112] = "The sea called me. I hung up.";
dialog[113] = "Asked for directions. Got told to 'follow the breeze'.";
dialog[114] = "Why are seashells so good at sharing? They're open-minded!";
dialog[115] = "Wore socks on the beach. Fashion crime alert!";
dialog[116] = "Tried island beer. It was a 'shore' thing.";
dialog[117] = "Packed 10 swimsuits. I'm here for 5 days.";
dialog[118] = "There's a mosquito fan club. I'm the star!";
dialog[119] = "Joined an island yoga class. We just nap on the sand.";
dialog[120] = "Met a fish. Named him Bob. Best friends now.";
dialog[121] = "Found a secret spot. Not telling... Okay, it's behind that rock.";
dialog[122] = "I heard a palm tree joke. It was 'tree-mendous'.";
dialog[123] = "Why did the beach blush? The sea-weed!";
dialog[124] = "Beach rule #1: Don't fry bacon shirtless.";
dialog[125] = "Met a crab. He was a bit snappy.";
dialog[126] = "I'm on a seafood diet. I see food, I eat it!";
dialog[127] = "I'm working on my tan... or sunburn. Surprise me, sun!";
dialog[128] = "Ordered a sea salad. It was just saltwater.";
dialog[129] = "This island doesn't have Uber. Just 'Flubber' - flip-flop rubber.";
dialog[130] = "Took a selfie with a starfish. It photobombed!";
dialog[131] = "The waves told me a joke. It was 'current'.";
dialog[132] = "Met a jellyfish. It was shockingly friendly.";
dialog[133] = "Island gym routine: Lift a coconut, drink, repeat.";
dialog[134] = "Saw a rainbow fish. Asked for gold. Still waiting.";
dialog[135] = "Did you see the beach theater? The play was 'sandy'.";
dialog[136] = "Tried island coffee. It's brew-tiful!";
dialog[137] = "The island birds have Twitter. Literally.";
dialog[138] = "Sandcastle contest today! My bucket list is ready.";
dialog[139] = "Got lost. Asked a star. It just twinkled.";
dialog[140] = "Had a race with a turtle. Lost terribly.";
dialog[141] = "Wore my new 'shark' shoes. Everyone fled the beach.";
dialog[142] = "Did a seashell call. Bad reception. Lots of wave noises.";
dialog[143] = "The island DJ is a crab. His mixes are 'claw-some'.";
dialog[144] = "Asked for island gossip. The coconut trees rustled.";
dialog[145] = "Played volleyball with a squid. It was a 'smash' hit.";
dialog[146] = "Rented a boat. It had a hole. Got a free shower!";
dialog[147] = "The local ice-cream flavor? Sandy caramel crunch!";
dialog[148] = "Did you hear about the sunburned zebra? Red and white stripes!";
dialog[149] = "Bought island shoes. They're just bigger leaves.";
dialog[150] = "Saw a fish at the bar. He was drinking 'water on the rocks'.";
dialog[151] = "Island fashion tip: More sunscreen, less everything else.";
dialog[152] = "I went to an island comedy show. The waves were rolling!";
dialog[153] = "Saw a squirrel with sunglasses. Island VIP!";
dialog[154] = "Beach wisdom: If lost, follow the hermit crab.";
dialog[155] = "Tried the island bus. It's a donkey cart.";
dialog[156] = "Played hide & seek. The sea found me.";
dialog[157] = "I asked for island music. Got whale songs.";
dialog[158] = "Tried a local spa. Got buried in sand.";
dialog[159] = "Sunrise or sunset? The sun's just playing peek-a-boo!";
dialog[160] = "Ever heard of a sand-wich? The island's special!";
dialog[161] = "Went star gazing. The moon photo-bombed!";
dialog[162] = "Played chess with a seagull. Bird's eye view advantage!";
dialog[163] = "Why was the sand so wet? The sea-weed on it!";
dialog[164] = "Island news update: Palm tree swayed. More at dawn!";
dialog[165] = "Had a chat with a pelican. He had a lot to 'gulp' about.";
dialog[166] = "Island fashion: If the coconut fits, wear it!";
dialog[167] = "I found a message in a bottle. It said, 'Recycle me!'.";
dialog[168] = "Hiking island style: From the beach chair to the bar!";
dialog[169] = "Played cards with dolphins. They had a 'whale' of a time!";
dialog[170] = "Saw a fish reading. It was 'booked' for the day!";
dialog[171] = "Bought a beach hat. It's 10% hat, 90% umbrella!";
dialog[172] = "I did the island dance. Step, step, splash!";
dialog[173] = "The island's hottest gossip? The volcano!";
dialog[174] = "Went to the beach library. All books were 'wet' literature.";
dialog[175] = "Did you hear about the island bakery? It's 'crusty'!";
dialog[176] = "Played poker with crabs. They're shellfish players!";
dialog[177] = "Island hack: Coconuts are just natural volleyballs.";
dialog[178] = "Went diving. The fish rated me 5/10.";
dialog[179] = "Tried to swim with sharks. They said I wasn't fin enough!";
dialog[180] = "Watched island TV. Just a bunch of waves!";
dialog[181] = "Joined a beach choir. We just hum 'm-mm'.";
dialog[182] = "Befriended a whale. He's a splash hit at parties!";
dialog[183] = "Why did the crab blush? Because the sea saw it!";
dialog[184] = "Island weather forecast: Sunny with a chance of coconuts.";
dialog[185] = "Found a floating coconut phone. It was on sea-mode!";
dialog[186] = "Hiked to the peak. It was just a bigger sand dune.";
dialog[187] = "I asked for an island drink. Got a glass of sea!";
dialog[188] = "Island lullaby? The snoring sea turtles!";
dialog[189] = "Had a chat with a shark. He was jaw-dropping!";
dialog[190] = "Island tip: Flip-flops are formal wear!";
dialog[191] = "Went to a seafood disco. Pulled a mussel!";
dialog[192] = "Heard of the beach detective? He says waves don't lie!";
dialog[193] = "Found an island clock. It's always 'beach time'!";
dialog[194] = "Bought an island car. It's a sand-mobile!";
dialog[195] = "Saw a clam at a concert. It was a shell-out!";
dialog[196] = "Beach wisdom: If you're salty, take a dip!";
dialog[197] = "Met the island mayor. He's a coconut.";
dialog[198] = "Beach fact: Sand is just very tiny rocks!";
dialog[199] = "Why don't oysters give to charity? They're shellfish!";
dialog[200] = "Went to a fish school. I was out of my depth!";
dialog[201] = "Heard of the sand bank? It has tide deposits!";
dialog[202] = "Island cinema? Just your dreams and starry skies!";
dialog[203] = "Found a beach calculator. It sums up the waves!";
dialog[204] = "Got a beach job. I sell shades to sunburned tourists!";
dialog[205] = "Had an island pizza. It was a tropical treat!";
dialog[206] = "Did you hear of the sea magician? He waves his wand!";
dialog[207] = "The island's busiest time? Sand-rush hour!";
dialog[208] = "Bought a beach book. It's a sandy-tale!";
dialog[209] = "Island rule: Leave only footprints. And maybe a sandcastle.";
dialog[210] = "Island music? Just the rhythm of the waves!";
dialog[211] = "Island motto: Life's a beach!";
dialog[212] = "Beach diet: Just sun, sea, and a sprinkle of sand!";
dialog[213] = "Found the island gym. It's a sea-lift!";
dialog[214] = "Why was the sand embarrassed? Because the tide went out!";
dialog[215] = "Island joke: Why did the beach never get lonely? Because of the sea!";
dialog[216] = "Watched the island news. Main story: A coconut fell!";
dialog[217] = "Island transport? Just ride a wave!";
dialog[218] = "Went to a beach BBQ. It was sizzling... like me!";
dialog[219] = "The island's WiFi password? Just 'BeachPlease'.";
dialog[220] = "Wanted a room with a sea-view. Got a hammock!";
dialog[221] = "Island currency? Shells and giggles!";
dialog[222] = "Island's favorite game? Hide and sea!";
dialog[223] = "Met the island lifeguard. It was a buoy!";
dialog[224] = "Beach wisdom: Life's wavy. Ride it!";
dialog[225] = "Island shopping? Just pick a coconut!";
dialog[226] = "Island's favorite drink? A splash of fun!";
dialog[227] = "Found an island hat. It was cap-tivating!";
dialog[228] = "Met a beach cat. It was purr-fect!";
dialog[229] = "Went to a beach party. It was lit... by moonlight!";
dialog[230] = "The island's speed limit? As fast as you can swim!";
dialog[231] = "Went to a beach cafe. It was brew-tal!";
dialog[232] = "Island philosophy: If you can't ride the wave, dive in!";
dialog[233] = "Went to a beach ball. It was bouncing!";
dialog[234] = "Saw a beach dog. It was barking... at the waves!";
dialog[235] = "Found the island's best spot. It's wherever you are!";
dialog[236] = "Saw a beach rabbit. It was hopping mad!";
dialog[237] = "Heard of the beach singer? He's a hit with the waves!";
dialog[238] = "Went to a beach spa. It was refreshing!";
dialog[239] = "Island's motto: Beach you to it!";
dialog[240] = "Met a beach cow. It was moo-dy!";
dialog[241] = "Heard the beach's favorite song? It's 'Waves of Love'!";
dialog[242] = "Found the island's secret. It's laughter!";
dialog[243] = "Island's favorite activity? A splash of fun!";
dialog[244] = "Met a beach fox. It was foxy!";
dialog[245] = "Island's favorite dish? A bowl of sunshine!";
dialog[246] = "Saw a beach horse. It was galloping... on the waves!";
dialog[247] = "Heard of the beach's favorite drink? It's 'Wave on the Rocks'!";
dialog[248] = "Met a beach tiger. It was roaring... with laughter!";
dialog[249] = "The beach's secret? It's all in the waves!";
dialog[250] = "Met a sandcastle architect. He’s grounded!";
dialog[251] = "Island wisdom: Waves come and go, but memories stay.";
dialog[252] = "Went to a beach school. I was a 'B' student – 'B' for beach!";
dialog[253] = "Island diet tip: You can't gain weight from island vibes!";
dialog[254] = "Why did the crab sit next to the turtle? To get a shell-ter!";
dialog[255] = "Went to a sand bar. The drinks were grainy!";
dialog[256] = "Heard about the sunburnt island? It was red-dy for shade!";
dialog[257] = "Went for a sea-dip. I'm now a seasoned tourist!";
dialog[258] = "Beach detective's tip: No such thing as too many footprints!";
dialog[259] = "Did you hear of the island fashion? It's wave-y!";
dialog[260] = "Island restaurant review: Great seafood, but too sandy!";
dialog[261] = "Met the island's top chef. His specialty? Sand-wiches!";
dialog[262] = "Why don't secrets last here? Because the sea tells it all!";
dialog[263] = "Found a beach watch. It's always island time!";
dialog[264] = "Beach dating tip: Find someone who sands out!";
dialog[265] = "Why was the sand mad? It was shore of itself!";
dialog[266] = "Did a beach workout. Sand-ups, tide-lifts, and wave-runs!";
dialog[267] = "Island bakery? Their rolls are a shore hit!";
dialog[268] = "Why did the beach go to school? To improve its tide-ing!";
dialog[269] = "Heard the beach's favorite band? The Beach Beatles!";
dialog[270] = "Met the island's psychologist. He's into deep thoughts!";
dialog[271] = "Island's top song? 'Every Grain You Take' by The Beach Police!";
dialog[272] = "Why was the fish good at school? It was top of the school!";
dialog[273] = "Saw an island ghost. It was hauntingly beautiful!";
dialog[274] = "Beach tip: If you're in a bad tide, just wave it off!";
dialog[275] = "Island's favorite poet? Sand-shakes-pear!";
dialog[276] = "Island's top seller? Sun-kissed lotion!";
dialog[277] = "Went to the beach theater. Got a role as a sandbag!";
dialog[278] = "Why was the crab never straight? It loved being side-ways!";
dialog[279] = "Island's greatest mystery? The lost city of Sand-lantis!";
dialog[280] = "Island's favorite story? Beauty and the Beach!";
dialog[281] = "Why did the starfish go to school? To become a sea-star!";
dialog[282] = "Beach fun fact: Every wave has its own high-five!";
dialog[283] = "Met the beach's superhero. He's Sand-man!";
dialog[284] = "Island's favorite drink? Sea-coconut mojito!";
dialog[285] = "Heard of the beach robot? It's powered by sun!";
dialog[286] = "Why did the jellyfish blush? It saw the ocean’s bottom!";
dialog[287] = "Island's favorite movie? The Fast and the Furious: Beach Drift!";
dialog[288] = "Why was the seashell not generous? It was shell-fish!";
dialog[289] = "Beach's most popular dance? The sandy shuffle!";
dialog[290] = "Met the beach philosopher. His motto? 'Sea-ze the day'!";
dialog[291] = "Why was the ocean always calm? It meditated with deep breaths!";
dialog[292] = "Island's favorite snack? Potato beaches!";
dialog[293] = "Met the beach detective. He had sandy clues!";
dialog[294] = "Island's favorite game? Sand-land monopoly!";
dialog[295] = "Heard about the fish comedian? He had a reel sense of humor!";
dialog[296] = "Beach's favorite quote? 'To sea or not to sea'!";
dialog[297] = "Why did the coral always laugh? It was a reef-le!";
dialog[298] = "Island's favorite play? Romeo and Jull-sea-et!";
dialog[299] = "Went to the beach cafe. Their brew was shore to please!";
dialog[300] = "Island’s favorite sport? Sand-volleyball!";
dialog[301] = "Why was the seaweed always calm? It kelp its cool!";
dialog[302] = "Island’s top job? The beachcomber!";
dialog[303] = "Why was the sand happy? Because it was shore of itself!";
dialog[304] = "Met a beach artist. He was sketching the sunrise!";
dialog[305] = "Went to a beach music fest. The bass was dropping like waves!";
dialog[306] = "Heard about the beach cat? It purred with the waves!";
dialog[307] = "Why did the crab love school? Because he was good at crab-culations!";
dialog[308] = "Met the island's banker. His vault? A treasure chest!";
dialog[309] = "Island's top chef? The guy making sand-wiches!";
dialog[310] = "Why was the beach sad? It missed the sea!";
dialog[311] = "Heard about the fish that could play guitar? It was a bass!";
dialog[312] = "Why did the turtle refuse to play cards? He couldn’t handle the deck!";
dialog[313] = "Island's favorite joke? Anything that's beachy!";
dialog[314] = "Went to the beach library. All books had a sandy finish!";
dialog[315] = "Why was the seagull happy? It was riding the high tides!";
dialog[316] = "Island’s favorite song? 'Every grain is sacred'!";
dialog[317] = "Why did the crab join the gym? To improve his mussel!";
dialog[318] = "Met the island’s top model. She’s a mermaid!";
dialog[319] = "Went to a seafood party. It was a shrimp-ly amazing!";
dialog[320] = "Island's favorite cartoon? SpongeBob SandPants!";
dialog[321] = "Why did the fish blush? It saw the ocean's wave!";
dialog[322] = "Went to the beach club. It was wavy!";
dialog[323] = "Met a beach psychic. She read my sandy palm!";
dialog[324] = "Heard about the island's marathon? It's a beach run!";
dialog[325] = "Island's best makeup? Sun-kissed cheeks!";
dialog[326] = "Went to a seafood concert. The band clammed up!";
dialog[327] = "Why did the fish get grades? To scale up!";
dialog[328] = "Met the beach's fitness instructor. He’s into sandy workouts!";
dialog[329] = "Why did the fish go to school? To improve its current knowledge!";
dialog[330] = "Island's favorite color? Sea-blue!";
dialog[331] = "Why did the starfish like mysteries? It loved star-tling stories!";
dialog[332] = "Island’s top attraction? The beach, obviously!";
dialog[333] = "Why did the sand go to school? To get a little gritty!";
dialog[334] = "Heard of the beach nerd? He’s into sand-bytes!";
dialog[335] = "Why did the fish join drama? It loved being the star-fish!";
dialog[336] = "Island's favorite fruit? The sea-berry!";
dialog[337] = "Met a beach mathematician. He’s into sand equations!";
dialog[338] = "Why was the beach cool? It had chill waves!";
dialog[339] = "Heard of the island’s top critic? He reviews sandcastles!";
dialog[340] = "Why did the fish go to Hollywood? To become a starfish!";
dialog[341] = "Island's favorite toy? A beach ball!";
dialog[342] = "Met the island's top singer. He has a beachy voice!";
dialog[343] = "Island’s top event? The annual sandcastle contest!";
dialog[344] = "Why did the crab never fight? He hated shellfish behavior!";
dialog[345] = "Went to a seafood spa. It was fin-tastic!";
dialog[346] = "Why did the turtle love the beach? It was a shell of a time!";
dialog[347] = "Met a beach poet. He writes in sandy verses!";
dialog[348] = "Island’s best kept secret? The mermaids!";
dialog[349] = "Why did the seaweed dance? To tangle with the waves!";
dialog[350] = "Went to a beach comedy show. It was wave-tingly funny!";
dialog[351] = "Why did the fish go to the market? To sell its scales!";
dialog[352] = "Met the beach's baker. His buns are sun-kissed!";
dialog[353] = "Island’s top activity? Sandy yoga!";
dialog[354] = "Why did the clam join a band? It had the drum shells!";
dialog[355] = "Met a beach gamer. He's into sand-box games!";
dialog[356] = "Why did the dolphin join school? To improve its porpoise!";
dialog[357] = "Island's favorite story? The one where you're the star!";
dialog[358] = "Why did the fish love music? It had the scales!";
dialog[359] = "Went to a beach debate. It was wave vs. tide!";
dialog[360] = "Met the island's geologist. He's into beach stones!";
dialog[361] = "Why did the seashell sing? It had the ocean's chorus!";
dialog[362] = "Island’s favorite pet? The beach bunny!";
dialog[363] = "Why was the sand proud? It was shore of its beauty!";
dialog[364] = "Met a beach scientist. He's into sea-research!";
dialog[365] = "Why did the ocean break up with the pond? It was too shallow!";
dialog[366] = "Heard of the beach's top writer? He’s into tide-turners!";
dialog[367] = "Why was the crab wise? It pondered on the sea-shore!";
dialog[368] = "Went to a beach party. The theme? Wave and rave!";
dialog[369] = "Why did the oyster go to school? To improve its pearl-ficiency!";
dialog[370] = "Heard of the beach's favorite dessert? Sand pudding!";
dialog[371] = "Why was the starfish popular? It was the star of the show!";
dialog[372] = "Island's favorite sport? Sandboarding!";
dialog[373] = "Met the beach's top chef. His signature? Wave soup!";
dialog[374] = "Why did the beach love the sun? It was its ray of hope!";
dialog[375] = "Went to the beach casino. The stakes? Sand dollars!";
dialog[376] = "Why did the fish go to the gala? It was a scaled event!";
dialog[377] = "Met a beach nerd. He's into byte-sand!";
dialog[378] = "Why was the seagull excited? It loved high tides!";
dialog[379] = "Heard of the beach's theater? It’s a sandy stage!";
dialog[380] = "Island's favorite story? The tale of waves!";
dialog[381] = "Met a beach trader. He deals in sand dollars!";
dialog[382] = "Went to a seafood festival. The theme? Scale and hail!";
dialog[383] = "Heard of the beach's favorite game? Sand castle defense!";
dialog[384] = "Why did the beach blush? It saw the sun’s rays!";
dialog[385] = "Went to a beach musical. It was fin-tune-tastic!";
dialog[386] = "Met the beach's librarian. She's into tide tales!";
dialog[387] = "Why did the fish become a detective? It loved fishing for clues!";
dialog[388] = "Heard of the beach's top dancer? He’s wave-rthy!";
dialog[389] = "Why did the beach love the moon? It gave tides!";
dialog[390] = "Met a beach athlete. He’s into sand sprints!";
dialog[391] = "Why did the fish love stories? They were tide-turning!";
dialog[392] = "Went to a beach poetry slam. It was wave-wordy!";
dialog[393] = "Heard of the beach's magician? He’s sand-tastic!";
dialog[394] = "Why did the beach love stars? They were shore-stunning!";
dialog[395] = "Met the island's historian. He’s into ancient waves!";
dialog[396] = "Why was the crab always calm? It meditated on the shore!";
dialog[397] = "Went to a beach concert. The theme? Sand and band!";
dialog[398] = "Why did the fish love the beach? It was shore-real!";
dialog[399] = "Heard of the island's top gamer? He’s into wave-games!";

dialog[400] = "Puh! I thought I would love the sun, but turns out that I hate it. I can't breath in this heat! ";

}