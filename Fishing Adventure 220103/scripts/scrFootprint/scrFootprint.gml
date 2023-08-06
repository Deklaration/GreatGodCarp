
function scrFootprint(){
	
	if layer_exists("Footprints")
	{
		
	if sprite_index = sProt_North || sprite_index = sProt_South
	{
		if image_index == 2 ||image_index == 8 
		{
			var	xx = 5
		}
		
		if image_index == 5 ||image_index == 11 
		{
			var	xx = -5
		}
		var	yy = -5
	}


	
	if sprite_index = sProt_West
	{
		var xx = 0
		if image_index == 2 || image_index == 8
		{
			var yy = -8
		}
		
		if image_index == 5 || image_index == 11
		{
			var yy = -3
		}
	}
	

	
	if (sprite_index = sProt_NorthEast || sprite_index = sProt_SouthWest)
	{
		if image_index == 2 || image_index == 8
		{
			var xx = -3
			var yy = -8
		}

		if image_index == 5 || image_index == 11
		{
			var xx = +3
			var yy = -3
		}
	}
	
	
	if image_index == 2 ||image_index == 8 
	{
		instance_create_layer(x+xx,y+yy,"Footprints",oFootprint)	
	}


	if image_index == 5 ||image_index == 11 
	{
		instance_create_layer(x+xx,y+yy,"Footprints",oFootprint)	
	}

	}
}




	/*
	
	
 _               _                 _        _           _           
| |             | |               | |      | |         | |          
| |__   __ _  __| |   ___ ___   __| | ___  | |__   __ _| |__  _   _ 
| '_ \ / _` |/ _` |  / __/ _ \ / _` |/ _ \ | '_ \ / _` | '_ \| | | |
| |_) | (_| | (_| | | (_| (_) | (_| |  __/ | |_) | (_| | |_) | |_| |
|_.__/ \__,_|\__,_|  \___\___/ \__,_|\___| |_.__/ \__,_|_.__/ \__, |
                                                               __/ |
                                                              |___/                                           
	__   ____   ____   ____   __
	\ \ / /\ \ / /\ \ / /\ \ / /
	 \ V /  \ V /  \ V /  \ V / 
	  \_/    \_/    \_/    \_/  
	
	
	
if sprite_index = sProt_North || sprite_index = sProt_South
{
if image_index == 2
	{
	instance_create_layer(x-5,y-5,"Footprints",oFootprint)
	}

if image_index == 5
	{
	instance_create_layer(x+5,y-5,"Footprints",oFootprint)
	}
	
if image_index == 8
	{
	instance_create_layer(x-5,y-5,"Footprints",oFootprint)
	}

if image_index == 11
	{
	instance_create_layer(x+5,y-5,"Footprints",oFootprint)
	}
}



if sprite_index = sProt_West && xscale = -1
{
if image_index == 2
	{
	instance_create_layer(x,y-8,"Footprints",oFootprint)
	}
if image_index == 5
	{
	instance_create_layer(x,y-3,"Footprints",oFootprint)
	}
if image_index == 8
	{
	instance_create_layer(x,y-8,"Footprints",oFootprint)
	}
if image_index == 11
	{
	instance_create_layer(x,y-3,"Footprints",oFootprint)
	}
}



if sprite_index = sProt_West && xscale = 1
{
if image_index == 2
	{
	instance_create_layer(x,y-8,"Footprints",oFootprint)
	}
if image_index == 5
	{
	instance_create_layer(x,y-3,"Footprints",oFootprint)
	}
if image_index == 8
	{
	instance_create_layer(x,y-8,"Footprints",oFootprint)
	}
if image_index == 11
	{
	instance_create_layer(x,y-3,"Footprints",oFootprint)
	}
}

if (sprite_index = sProt_NorthEast || sprite_index = sProt_SouthWest) && xscale = 1
{
if image_index == 2
	{
	instance_create_layer(x-3,y-8,"Footprints",oFootprint)
	}
if image_index == 5
	{
	instance_create_layer(x+3,y-3,"Footprints",oFootprint)
	}
if image_index == 8
	{
	instance_create_layer(x-3,y-8,"Footprints",oFootprint)
	}
if image_index == 11
	{
	instance_create_layer(x+3,y-3,"Footprints",oFootprint)
	}
}


if (sprite_index = sProt_NorthEast || sprite_index = sProt_SouthWest) && xscale = -1
{
if image_index == 2
	{
	instance_create_layer(x+3,y-3,"Footprints",oFootprint)
	}
if image_index == 5
	{	
	instance_create_layer(x-3,y-8,"Footprints",oFootprint)
	}
if image_index == 8
	{
	instance_create_layer(x+3,y-3,"Footprints",oFootprint)
	}
if image_index == 11
	{	
	instance_create_layer(x-3,y-8,"Footprints",oFootprint)
	}
}


	}

}