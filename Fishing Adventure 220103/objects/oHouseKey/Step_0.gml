depth = -y
if place_meeting(x,y,oProt) && keyboard_check_pressed(global.key_a)
	{
		if global.gotKey = false
		{
		instance_create_depth(x,y,0,oGettingItems,{item : enumItem.Key,parent : id})
		global.gotKey = true
		}
		
	}
	
if global.gotKey = true
{
	instance_destroy(id)
}