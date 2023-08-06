draw_text(300,200,"MARK")

	if keyboard_check_pressed(vk_space) && losttobottom = false
	{
		//Bestämmer hur oLostBete ska bete sig.
		losttobottomx = self.x
		losttobottomy = self.y
		losttobottomxscale = self.image_xscale
		losttobottomyscale = self.image_yscale
		losttobottomangle = self.angle
	
		//Ta bort hela hjulet och allt som har med hjulet att göra. 
		instance_destroy(oArrow)
		instance_destroy(oPieLineGreen)
		instance_destroy(oPieLineGreen2)
		instance_destroy(oPieLineYellowLeft)
		instance_destroy(oPieLineYellowLeft2)
		instance_destroy(oPieLineYellowRight)
		instance_destroy(oPieLineYellowRight2)
		instance_destroy(oPullingWheel)
		instance_destroy(oHitBete)

		if global.fishbait = true
		{
			x = losttobottomx
			y = losttobottomy
		}
	
		instance_create_depth(x,y,self.depth,oLostBete)

		timerafterlosttobottom -=1
		
		if timerafterlosttobottom =0
		{
			losttobottom = true
		}

	}
