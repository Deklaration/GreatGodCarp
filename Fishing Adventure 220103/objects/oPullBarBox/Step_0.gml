if instance_exists(oBete)
{

if keyboard_check_pressed(global.key_a) && image_index = 0 
{ 
	h = 0
	
	image_xscale = 1.5
	image_yscale = 1.5
	
	
	if place_meeting(x,y,oPullBarHitUte) //Träffar den längst ut
	{
		h +=1		
		timer = 10
		starttimer = timer
		image_index = 1
	}
	if place_meeting(x,y,oPullBarHitMitten) //Träffar nummer två
	{
		timer = 10
		starttimer = timer
		h +=1
	}
	if place_meeting(x,y,oPullBarHitInne) //Träffar den längst in
	{
		h +=1
		timer = 20
		starttimer = timer
	}

	oBete.fiskid.fishpower = h
	if h = 0
	{
		oProtFishing.sprite_index = sProtFishingReeling
		oBete.fiskid.catchratio -= oBete.baitpower
		oBete.fiskid.fishpower = -1 * oBete.fiskid.size
		timer = 20
		starttimer = timer
		image_index = 2
	}
	else
	{
		oProtFishing.sprite_index = sProtFishingPull
	}

	oBete.success = true

}

if image_index != 0
{
	timer -=1
	if timer <0
	{
		oBete.fiskid.fishpower = 0
		image_index = 0
		timer = starttimer
		image_xscale = 1
		image_yscale = 1
		oPullBarHitUte.image_index = 0
		oPullBarHitMitten.image_index = 0
		oPullBarHitInne.image_index = 0
		
	}
	
}


if timer = starttimer -1
{
	if h = 1
	{
		part_particles_create_color(o_particles.ps_pull, x, y, o_particles.pt_pull, global.color[24], random_range(2, 4));
		oPullBarHitUte.hit = true
		oPullBarHitUte.image_index = 1
	}

	if h = 2
	{
		part_particles_create_colour(o_particles.ps_pull, x, y, o_particles.pt_pull, global.color[10], random_range(3, 6));
		oPullBarHitMitten.hit = true
		oPullBarHitMitten.image_index = 1
	}

	if h = 4
	{
		part_particles_create_colour(o_particles.ps_pull, x, y, o_particles.pt_pull, global.color[12], random_range(13, 30));
		oPullBarHitInne.hit = true
		oPullBarHitInne.image_index = 1
	}
}
}
else
{
	instance_destroy(self)
}