depth = -y
if place_meeting(x,y,oProt) && keyboard_check_pressed(global.key_a)
	{
		if global.gotHorse = false
		{
		instance_create_depth(x,y,0,oGettingItems,{item : enumItem.Horse,parent : id})
		global.gotHorse = true
		}
		
	}
	
if global.gotHorse = true
{
	instance_destroy(id)
}