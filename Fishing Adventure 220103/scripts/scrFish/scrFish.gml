function scrFishCreator(size_mini,size_max,strong,fight_time,_baitmovespeed,_baitmovedistance,fishnumber,_sightLength,_sightWidth){
randomize()

size = random_range(size_mini,size_max) //Hur tjock den är, och hur snabbt den drar när man missar.
fightsize = strong //Används inte just nu. Borde kanske vara kopplat till hur den inte vill ta kroken. Alla fiskar är väldigt lätta att fånga just nu.
fighttimer = fight_time //Hur länge fisken kämpar innan den drar sig
baitmovespeed = _baitmovespeed //Hur snabbt oPullBarHitUte rör sig från sida till sida
baitmovedistance = _baitmovedistance //Hur långt oPullBarHitUte rör sig. Inte mer än 15!
//f = fishnumber

sightLength = _sightLength
sightWidth = _sightWidth
//info = information

showAngryFish = false
notInterestedSubImg = 0
object_name = object_get_name(object_index);
var modified_name = string_copy(object_name, 6, string_length(object_name) - 5);

for (var u = 0; u < array_length(global.fishNames); u++) {
    if (global.fishNames[u] == modified_name) {
        f = u;
        break;
    }
}


//if (global.fisharray[f,11] > random(global.rareFishLuck)) && global.fisharray[f,11] != 500
//{
//	instance_destroy(id)
//}


//fishname = _fishname
//sellvalue = _sellvalue
//fishdesc = _fishdesc

fishpower = 0
pullawaytimer = 0

if place_meeting(x,y,oMark)
{
	instance_destroy(self)
}

path[0] = pFish1
path[1] = pFish2
path[2] = pFish3
path[3] = pFish4
path[4] = pFish5
path[5] = pFish6

fighttimerset = false
catchratio = 0

state[0] = "idle"
state[1] = "curoius"
state[2] = "bite"
state[3] = "fight"
state[4] = "dead"
state[5] = "scared"

//Pausgrejer
speedbeforepaused = 0
gettingspeedbeforepaused = false
settingpath_speed = true

hspeed = random_range(-1,1) //-3,3
timer = irandom_range(20,70)
hitidset = false
image_speed = 0
i=0
//j = irandom_range(0,5)
add = false

sprite_index = global.fisharray[f,1]


fishPath = global.fisharray[f,12]
pathSpeedMin = random_range(0.9,1.1)
pathSpeedMax = random_range(1.7,2)

path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false) //0.3,2

if global.fiskesida = "right"
{
	for (var q = 0; q< irandom_range(10,25); q += 1) //30, 100
	{
		instance_create_depth(random_range(-50,oProtFishing.x),random_range(oWaterCol.y ,oMark.y),-1,oTinyFish) //DOCK
	}
}

if global.fiskesida = "left"
{
	for (var q = 0; q< irandom_range(10,25); q += 1) //30, 100
	{ 
		instance_create_depth(random_range(oProtFishing.x,room_width+3),random_range(oWaterCol.y  ,oMark.y),-1,oTinyFish) // DOCK //10
	}
}



hitid = instance_create_depth(self.x,self.y,self.depth,oHitFish,{fiskid : id})

timer = 1000
ingenspeednu = false
followspeed = 0.5
angle = 0 
angleset = false
timeraftercatch = 120
runaway = false
up = false
left = false
down = false
}

/*
o                  o             o                  o
  o ___/|__          o            o   o              o
o _/       \  /| o              o     ___/|__      o
 /  @ \\    \/ |    o            o  _/       \  /|   o  ___/|__
 \_   //    /\ |  o  ___/|__       /  @ \\    \/ | o  _/       \  /|
   \_______/  \| o _/       \  /|  \_   //    /\ |  o/  @ \\    \/ |
                  /  @ \\    \/ |    \_______/  \|   \_   //    /\ | 
                  \_   //    /\ |                      \_______/  \|
                    \_______/  \| 
*/
function scrFishStep(){

if global.vegan = true
{
	sprite_index = global.fisharray[f,2]
}
else
{
	sprite_index = global.fisharray[f,1]
}


if global.paused = true
{
	if gettingspeedbeforepaused = false //Om man sparat hastigheten
	{
	speedbeforepaused = path_speed	//Sätter hastigheten i en variabel
	gettingspeedbeforepaused = true //Nu har man sparat hastigheten
	}
settingpath_speed = false //Gör redo för att sätta tillbaka hastigheten
path_speed = 0 //Fryser tiden
}

if global.paused = false
{
	
	gettingspeedbeforepaused = false //Förbereder ny paus
	if settingpath_speed = false //Om man har satt dit den tidigare hastigheten
	{
	path_speed = speedbeforepaused //Sätt dit den tidigare hastigheten som sparats när man pausat
	settingpath_speed = true //Så man inte sätter dit den flera gånger om. Kanske borde lära mig switches.
	}


///

	image_angle = angle
	j = irandom_range(0,5)



	if i < 3 
	{
		if( abs(angle_difference(180, direction)) < 90)
		{
			image_xscale = -1;
		}
		else
		{
			image_xscale = 1;
		}
	}


//////////////////////STATES


	if i = 0
	{
		timer = irandom_range(130,300)
		angleset = false
		angle = 0

	if place_meeting(x,y,oMark)
	{
		if global.fiskesida = "right"
		{
		path_start(pFishUp,0.25,path_action_stop,false)
		}
		if global.fiskesida = "left"
		{
		path_start(pFishUp_Mirror,0.25,path_action_stop,false)
		}
		
		up = true
	}
	
	if up = true && !place_meeting(x,y,oMark) && path_position = 1
	{
		path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
		up = false
	}
	
	if y < oWaterCol.y+10 
	{
		if global.fiskesida = "right"
		{
		path_start(pFishDown_Mirror,0.25,path_action_stop,false)
		}
		if global.fiskesida = "left"
		{
		path_start(pFishDown_Mirror,0.25,path_action_stop,false)
		}
		down = true
	}
	
	if down = true &&  y > oWaterCol.y+7 && path_position = 1
	{
		path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)

		down = false
	}

		if global.fiskesida = "right"
		{
			if x > oProtFishing.x-25 //DOCK
			{
				path_start(pFishLeft,0.25,path_action_stop,false)
						left = true
			}
		}

		if global.fiskesida = "left"
		{	
			if x < oProtFishing.x + 25 //DOCK
			{
				path_start(pFishLeft_Mirror,0.25,path_action_stop,false)
						left = true
			}
		}


	
	if global.fiskesida = "right"
	{
	
		if left = true && x < oProtFishing.x-25 && path_position = 1 //DOCK
		{
			path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
			left = false
		}
	}
	
	if global.fiskesida = "left"
	{
	
		if left = true && x > oProtFishing.x+25 && path_position = 1 //DOCK
		{
			path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
			left = false
		}
	}
	
	
	
	}

/////////////////////////////////////

	if i = 1 //SER BETE. NÄR SKA DEN GE UPP?
	{
		path_end()
		

	
		if !instance_exists(oBete)
		{
			path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
			i = 0
		}
	
		if instance_exists(oBete)
		{
			if oBete.losttobottom = true
			{
				path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
				i = 0
			}
	
			if oBete.x >= self.x -2 //&& angleset = false
			{
				image_xscale = 1
				angleset = true
				angle = point_direction(self.x,self.y,oBete.x,oBete.y)
			}
		
			if oBete.x < self.x //&& angleset = false
			{
				angleset = true
				image_xscale =-1
				angle = point_direction(self.x,self.y,oBete.x,oBete.y) -180
			}
		 
			if distance_to_object(oBete) > random_range(50,80)
			{
				path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
				i = 0
			}
		
			//Om betet är för mycket ovanför eller för mycket under, så ska fisken backa lite istället och avvakta
			if self.x > oBete.x - 10 && self.x < oBete.x
			{
				x -= 1
			}
		
		
			if self.x < oBete.x + 10 && self.x > oBete.x
			{
				x += 1
			}
	
		
			//Följer betet framåt och bakåt
			if self.x > oBete.x
			{
				self.x -= followspeed /6
			}
	
			if self.x < oBete.x
			{
				self.x += followspeed /6
			}
		
			//Följer betet uppåt och nedåt
			if self.y > oBete.y && self.y > oWaterCol.y+5
			{
				self.y -= followspeed 
			}
	
			if self.y < oBete.y
			{
				self.y += followspeed /2
			}
	
			timer -=1
	
			if timer <0
			{
				i+=1
				timer = 20
			}
	
			if global.fishbait = true
			{
				if global.fiskesida = "left"
				{
				//image_yscale = -1
				}
			i = 5
			}
		}
	}

/////////////////////////////////////////////

	if i = 2  //SIMMAR MOT BETE. 
	{
		global.cantpause = true
		if !instance_exists(oBete)
		{
			if global.fiskesida = "right"
			{
				path_start(pDownLeft,random_range(0.13,0.5),path_action_continue,false)
			}
			
			if global.fiskesida = "left"
			{
			path_start(pDownLeft_Mirror,random_range(0.13,0.5),path_action_continue,false)
			}
		
			i = 0
		}
	
		if instance_exists(oBete)
		{
			move_towards_point(oBete.x,oBete.y,2)
	
			if oBete.losttobottom = true
			{
				path_start(fishPath,random_range(pathSpeedMin,pathSpeedMax),path_action_restart,false)
				i = 0
			}
		
	
			with instance_create_depth(x,y+random_range(-4,4),self.depth+1,oBubble)
			{
				direction = point_direction(x,y,oProtFishing.x,oProtFishing.y)
			}


	
			timer -=1
			if place_meeting(x,y,oBete) 
			{
				keyboard_key_release(global.key_a)
				i = 3
			}
			
			if global.fishbait = true
			{
				i = 5
			}
		}
	}


//////////////////////////////////////////

if i = 3 //SLÅSS 
{
	global.cantpause = true
	oBete.fiskid = id
	
		pullawaytimer +=0.01 
		if pullawaytimer > fighttimer //Den kan inte hållas på halster för länge.
		{
			i = 5
			oProtFishing.sprite_index = sProtFishingGotAway
			oProtFishing.image_speed = 0.1
			global.fishbait = false
			oRope.fiskdrar = true
			if instance_exists(oBete)
			{
				oBete.fiskenoutofroom = true	
			}
			instance_destroy(oHitBete)
			instance_destroy(oPull)
			instance_destroy(oPullBarBox)
			instance_destroy(oPullBarHitInne)
			instance_destroy(oPullBarHitMitten)
			instance_destroy(oPullBarHitUte)
		}
	
	if fighttimerset = false
	{
		global.fighttimer = fighttimer * global.rodarray[global.activerod,1]
		fighttimerset = true
		instance_create_depth(x+10,y,self.depth-1,oPull)
		depth -=10
	}
		
	
	if ingenspeednu = false
	{
		vspeed = 0
		hspeed = 0
		ingenspeednu = true
		instance_create_depth(self.x,self.y,0,oTinyFishSwimAway) //Småfiskarna ska akta sig när den biter fast
	}
	
	if oBete.losttobottom = true
	{
		oBete.fiskendrarsig = true
		global.fishbait = false
		i = 5
	}
	
	if oBete.losttobottom = false
	{
		if pullawaytimer < fighttimer
		{
		global.fishbait = true
		}
		oProtFishing.image_speed = 0.2

	
		
		

		
		
		
		with instance_create_depth(x,y+random_range(-15,15),self.depth+1,oBubble)
		{
			direction = point_direction(x,y,oProtFishing.x,oProtFishing.y)
		}
	}
		
		image_speed = 1
		x = oBete.x -2 //7 
		y = oBete.y
		image_xscale =-1
		if global.fiskesida = "right"
		{
			image_yscale = 1
		}
		if global.fiskesida = "left"
		{
			image_yscale = -1
		}
		
		angle = point_direction(self.x,self.y,oProtFishing.x,oProtFishing.y+60)

	if place_meeting(self.x,self.y,oHitProtFishing)
	{
		i = 4
	}

}

/////////////////////////////////////////

if i = 4
{
	//////////HÄR BESTÄMMER DU VAD SOM HÄNDER NÄR DU FÅNGAR DEN JÄVELN
	if instance_exists(oRope)
	{
		oRope.alpha = 0
	}
	if instance_exists(oBait)
	{
		oBait.alpha = 0
	}
	
	if add = false
	{
	scrInventoryAdd(oInventory,f)
	add = true
		if global.catchFirstFish = -1
		{
			global.catchFirstFish = global.fisharray[f,4]
		}
	}
	instance_destroy(hitid)
	oProtFishing.sprite_index = sProtFishingCaughtFish
	oProtFishing.image_speed = 0
	speed = 0
	hspeed = 0
	vspeed = 0
	image_angle = 270
	
	if timeraftercatch = 120 || timeraftercatch = 90 || timeraftercatch = 60 || timeraftercatch = 30 
	{
		oProtFishing.image_index = 0
		x = oProtFishing.x + 42
		y = oProtFishing.y + 21
	}
	if timeraftercatch = 105 || timeraftercatch = 75 || timeraftercatch = 45 || timeraftercatch = 15
	{
		oProtFishing.image_index = 1
		x = oProtFishing.x + 38
		y = oProtFishing.y + 26
	}

	image_speed = 0
	if global.fishcaught = false
	{
		global.fishhowmanycaught[f] +=1
	}
	global.fishcaught = true
	global.fishbait = false
	global.fishinfo[f] = "Caught!"
	//global.fishinfo[f] = info
	global.fishcolor[f] = c_white
	if size > global.fishsize[f]
	{
	global.fishsize[f] = size
	}
	timeraftercatch -=1
		
	if timeraftercatch <0 //När fisken ska försvinna och man kan fortsätta fiska
	{
		global.cantpause = false
		//instance_create_depth(-1000,-1000,0,oInventory)
		
		instance_destroy(self)
		oProtFishing.sprite_index = sProtFishing
		oProtFishing.image_speed = 0
		oProtFishing.image_index = 0
		global.fishcaught = false
		oProtFishing.kastat = false
		oProtFishing.kastat2 = false
	}
		
}

////////////////////////////////////

if i = 5 //Fisken stickeriväg!
{ 
	global.cantpause = false
	if global.fiskesida = "right"
	{
	image_yscale = 1
	image_xscale = -1
	
	if angle < 0
	{
		angle += 2
	}
	
	if angle > 180
	{
		angle = 0
	}
	
	if angle > 0
	{
		angle -= 2
	}
	}
	
	
	if global.fiskesida = "left"
	{

	if angle < 180
	{
		angle -= 2
	}
	
	if angle > 0
	{
		angle = 180
	}
	
	if angle > 180
	{
		angle += 2
	}
	}
	
	if runaway = false
	{
		if global.fiskesida = "right"
		{
		path_start(pSwimAway,2,path_action_continue,false)
		}
		if global.fiskesida = "left"
		{
		path_start(pSwimAway_Mirror,2,path_action_continue,false)
		}
		runaway = true
	}

	
	if self.x < -25 || self.x > room_width + 25
	{	
		instance_destroy(hitid)
		instance_destroy(self)
		
	}


} //i=5
} //Paused
} //Hela fuktionen

/*
o                  o             o                  o
  o ___/|__          o            o   o              o
o _/       \  /| o              o     ___/|__      o
 /  @ \\    \/ |    o            o  _/       \  /|   o  ___/|__
 \_   //    /\ |  o  ___/|__       /  @ \\    \/ | o  _/       \  /|
   \_______/  \| o _/       \  /|  \_   //    /\ |  o/  @ \\    \/ |
                  /  @ \\    \/ |    \_______/  \|   \_   //    /\ | 
                  \_   //    /\ |                      \_______/  \|
                    \_______/  \| 
*/

function scrFishDraw(){

draw_self()
//scrDrawSet(fTextbox,c_white,fa_center)
//draw_text(self.x,self.y,"CR: " + string(catchratio) + " FS: " + string(fightsize) + " FT: " + string(fighttimer))

//draw_text(x,y+5,global.fisharray[f,4])

//draw_text(x,y-5,global.fisharray[f,11])
//draw_path(fishPath,x,y,false)

if showAngryFish = true && notInterestedSubImg < 10 && global.fishbait = false
{

	notInterestedSubImg += 0.1
	draw_sprite(sNotInterested,notInterestedSubImg,x,y-sprite_height)

}

if hspeed < 0
{
	image_xscale = 1
}

if hspeed > 0
{
	image_xscale = -1
}


}

/*
o                  o             o                  o
  o ___/|__          o            o   o              o
o _/       \  /| o              o     ___/|__      o
 /  @ \\    \/ |    o            o  _/       \  /|   o  ___/|__
 \_   //    /\ |  o  ___/|__       /  @ \\    \/ | o  _/       \  /|
   \_______/  \| o _/       \  /|  \_   //    /\ |  o/  @ \\    \/ |
                  /  @ \\    \/ |    \_______/  \|   \_   //    /\ | 
                  \_   //    /\ |                      \_______/  \|
                    \_______/  \| 
*/

function scrFishColoHitFish(){

//if hitid = 0 && hitidset = false
//{
//	if other.idset = false
//	{
//		hitid = other.id
//		hitidset = true
//	}
//}
}
