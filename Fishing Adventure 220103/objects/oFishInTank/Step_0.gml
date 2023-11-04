

if global.vegan = false
{
	sprite_index = global.fisharray[tank.fish,1]
	sprite_set_offset(global.fisharray[tank.fish,1],sprite_get_width(global.fisharray[tank.fish,1]) / 2,sprite_get_height(global.fisharray[tank.fish,1]) /2)
}
if global.vegan = true
{
	sprite_index = global.fisharray[tank.fish,2]
	sprite_set_offset(global.fisharray[tank.fish,2],sprite_get_width(global.fisharray[tank.fish,2]) / 2,sprite_get_height(global.fisharray[tank.fish,2]) /2)
}

if x - sprite_width/2 < (tank.x - 35) || x + sprite_width/2 > (tank.x + 35)
{
	goBackToTheMiddle = true
}

if goBackToTheMiddle = true
{
	move_towards_point(tank.x,y,0.2)
	timer -=d(1)
		if timer <0
		{
			goBackToTheMiddle = false
			timer = 80
			y_original = y
			x_original = x
			bobbingAmountX = random_range(1,9)
		}
}


if goBackToTheMiddle = false
{
bobbingTime += bobbingSpeed;
y_offset = sin(bobbingTime) * bobbingAmount;
y = y_original + y_offset;

bobbingTimeX += bobbingSpeedX;
x_offset = sin(bobbingTimeX) * bobbingAmountX;
x = x_original + x_offset;
}

