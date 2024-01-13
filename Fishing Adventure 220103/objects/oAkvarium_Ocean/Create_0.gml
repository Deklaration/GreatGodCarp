talking = false
createtext = false
timer = 5
stop = false
createdfish = 0
depth = -y-10
image_speed = 0

skylt = instance_create_depth(x+28,y+7,self.depth-3,oAkvariumSkylt,{tank : id})

fish = global.oceanFishNumber[_fish]

if global.setFishInTank = false
{
global.fishInTank[fish] = 0
}
else
{

	if createdfish < global.fishInTank[fish]// != 0
	{
		for (var i = 0; i < global.fishInTank[fish]; ++i) 
		{
			instance_create_depth(random_range(x-10,x+10),random_range(y-4,y+4),depth-1,oFishInTank,{tank : id})
			createdfish +=1
		}
	}

}
instance_create_depth(x,y,depth-2,oAkvarium_Ocean_Window,{tank : id})