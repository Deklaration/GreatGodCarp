depth = 50
image_speed = 0
image_index = irandom_range(0,3)
speedbeforepaused = 0
gettingspeedbeforepaused = false
settingpath_speed = true
if global.fiskesida = "right"
{
	path_start(pSwimAway,random_range(0.3,0.43),path_action_continue,false)
}

if global.fiskesida = "left"
{
	image_xscale = -1
		path_start(pSwimAway_Mirror,random_range(0.3,0.43),path_action_continue,false)
}
