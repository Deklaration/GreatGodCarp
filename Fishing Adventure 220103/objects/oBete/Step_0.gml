image_angle = angle

if !instance_exists(fiskid)
{
	fiskid = oNothing
}

if linereach = true
{
	if keyboard_check(global.key_a) && top = false && losttobottom = false
	{
		hooky = self.y -2//-8
	}
	
	else 
	
	{
		hooky = self.y
	}
}

//BETET FLYGER GENOM LUFTEN

if water = false
{
	angle = lengthdir_x(64,point_direction(self.x,self.y,oProtFishing.x,oProtFishing.y)) //64
	
	if global.paused = false
	{
	hspeed = -global.rodarray[global.activerod,3]// global.rodthrow //SKA ANPASSAS EFTER SPÖ. 2.4 ÄR MAXSTYRKAN. 
	vspeed +=0.03
	}

	if !place_meeting(self.x,self.y,oWaterCol)
	{
		water = false
	}

	if place_meeting(self.x,self.y,oWaterCol) && water = false
	{
		part_particles_create_colour(o_particles.ps, other.x, other.y, o_particles.pt_splash, make_colour_rgb(52, 152, 219), random_range(3, 6));
		hooky = self.y 
		hookx = self.x
		water = true
		speed =  0
		hspeed = 0
	}

}

//BETET LIGGER I VATTNET

if water = true
{

	pointbetweenx = point_distance(self.x,0,oProtFishing.x,0) / 2
	pointbetweeny = point_distance(0,self.y,0,oProtFishing.y /2)
	rot = true


	if rot = true
	{
		if angle > 0
		{
			angle -= 1
		}
		
		if angle < 0
		{
			angle += 1
		}
	
	}

	if y < room_height-7 && losttobottom = false && fiskenoutofroom = false && global.fishbait = false //30
	{
		if global.paused = false
		{
		y+=0.5 //2
		}
	}
	
	if y > oWaterCol.y && (losttobottom = true || fiskenoutofroom = true) && global.fishbait = false
	{
		if global.paused = false
		{
		y-=0.375//1.5
		}
	}
	
	if top = true && global.fishbait = false
	{
		if global.paused = false
		{
		y = oWaterCol.y  // oProtFishing.y + 50 //64 petter
		}
	}

	if right = true && top = true
	{
		instance_destroy(oRope)
		instance_destroy(oHitBete)
		oProtFishing.kastat = false
		oProtFishing.kastat2 = false
		fiskendrarsig = false
		global.wheelspeed = 7
		instance_destroy(self)
	}
	
}

//Fisken drar betet ur skärmen

if instance_exists(fiskid)
{
	if fiskid.x <0
	{
		oProtFishing.sprite_index = sProtFishingGotAway
		oProtFishing.image_speed = 0.1
		global.fishbait = false
		fiskenoutofroom = true
	
	//Ta bort hela hjulet och allt som har med hjulet att göra. 
		instance_destroy(oHitBete)
		fiskid.i = 5
	}

}
		
//Ändrar tillbaka spriten på oProt så hen inte är ledsen hela tiden
if fiskenoutofroom = true
{
	fishgotawayspritetimer -=d(1)
	if fishgotawayspritetimer <0
	{
		oProtFishing.sprite_index = sProtFishing
		oProtFishing.image_speed = 0
		oProtFishing.image_index = 0 
	}
}

///Fastnar på botten

if place_meeting(self.x,y-4,oMark)//16
{


	if (keyboard_check_pressed(global.key_a) || global.fishbait = true) && losttobottom = false
	{
		//Bestämmer hur oLostBete ska bete sig.
		losttobottomx = self.x
		losttobottomy = self.y
		losttobottomxscale = self.image_xscale
		losttobottomyscale = self.image_yscale
		losttobottomangle = self.angle

		instance_destroy(oHitBete)

		if global.fishbait = true
		{
			x = losttobottomx
			y = losttobottomy
		}
	
		instance_create_depth(x,y,self.depth,oLostBete)
		scrInventoryRemove(oBait,global.activebait)
		
		timerafterlosttobottom -=d(1)
		
		if timerafterlosttobottom =0
		{
			losttobottom = true
		}

	}

}



	
if fiskid.i = 3 && global.fishbait = true
{
	if global.fiskesida = "right"
	{
	
	if success = true
	{
		move_towards_point(oHitProtFishing.x,oHitProtFishing.y+2,fiskid.fishpower)
	}
	if success = false
	{
		speed = 0
	}
	
	if fail = true
	{
		x-=2
	}
	
	}
}

//show_debug_message(global.fishbait)

/////////

if keyboard_check_direct(global.key_a)
{
	
if global.fishbait = false
{

	if water = true
	{ 

		rot = false
		angle = -lengthdir_x(64,point_direction(self.x,self.y,oProtFishing.x,oProtFishing.y)) //64

		if losttobottom = true
		{
 			losttobottomminusline = vspeed 
		}
	
		holddownspacetimer -=d(1)	
	
		if self.y > oProtFishing.y && top = false && holddownspacetimer >= 0
		{
			vspeed =-1 //-4
		}
	
		if self.y > oProtFishing.y && top = false && holddownspacetimer <0
		{
			if vspeed >-1.5 //-6
				{
				vspeed -=0.01 //-0.03
				}
		}
	
		if self.y < oWaterCol.y //oProtFishing.y + 50 //64 petter
		{
			top = true
			vspeed = 0
		}
	
if global.fiskesida = "right"
{

		if self.x < oProtFishing.x-2.5 && holddownspacetimer >= 0
		{
			hspeed =0.25
		}
	
		if self.x < oProtFishing.x-2.5 && top = true && holddownspacetimer >= 0
		{
			hspeed =0.5
		}
		
		if self.x < oProtFishing.x-2.5 && holddownspacetimer < 0
		{
			if hspeed <0.8
			{
				hspeed +=0.075
			}
		}
		
		if self.x < oProtFishing.x-2.5 && top = true && holddownspacetimer < 0
		{	
			if hspeed <1.5
			{
				hspeed +=0.075
			}
		}

}

if global.fiskesida = "left"
{

		if self.x > oProtFishing.x-2.5 && holddownspacetimer >= 0
		{
			hspeed =-0.25
		}
	
		if self.x > oProtFishing.x-2.5 && top = true && holddownspacetimer >= 0
		{
			hspeed =-0.5
		}
		
		if self.x > oProtFishing.x-2.5 && holddownspacetimer < 0
		{
			if hspeed >-0.8
			{
				hspeed -=0.075
			}
		}
		
		if self.x > oProtFishing.x-2.5 && top = true && holddownspacetimer < 0
		{	
			if hspeed >-1.5
			{
				hspeed -=0.075
			}
		}

}

		if global.fiskesida = "right"
		{
			if self.x >= oProtFishing.x
			{
				right = true
				hspeed = 0
			}
		}
	
		if global.fiskesida = "left"
		{
			if self.x <= oProtFishing.x
			{
				right = true
				hspeed = 0
			}
		}
	
		if hspeed = 0 && top = true
		{
			right = true
		}


	}

}

}

////////

if keyboard_check_released(global.key_a)
{
	if water = true && global.fishbait = false 
{
top = false
vspeed = 0
hspeed = 0
rot = true
holddownspacetimer = 50
losttobottomminusline = 0
}
}