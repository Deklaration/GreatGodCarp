//if (oBB_prot.cheer % 5 == 0) && changed = false {
//    image_index = 1 - image_index
//	changed = true
//}

//if (oBB_prot.cheer % 5 == 1)
//{
//	changed = false
//}


if oBB_prot.text = "PERFECT!"
{
	image_speed = 0.6
}
if oBB_prot.text = "OKAY!"
{
	image_speed = 0.3
}
if oBB_prot.text = "miss!"
{
	image_speed = 0.4
	sprite_index = sBB_sailor_sad
}
if oBB_prot.text = ""
{
	image_speed = 0
	sprite_index = sBB_sailor
}