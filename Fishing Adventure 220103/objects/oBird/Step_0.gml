if global.paused = true
{
	if gettingspeedbeforepaused = false //Om man sparat hastigheten
	{
	speedbeforepaused = path_speed	//Sätter hastigheten i en variabel
	gettingspeedbeforepaused = true //Nu har man sparat hastigheten
	}
settingpath_speed = false //Gör redo för att sätta tillbaka hastigheten
path_speed = 0 //Fryser tiden
}

if global.paused = false
{
	
gettingspeedbeforepaused = false //Förbereder ny paus
	if settingpath_speed = false //Om man har satt dit den tidigare hastigheten
	{
	path_speed = speedbeforepaused //Sätt dit den tidigare hastigheten som sparats när man pausat
	settingpath_speed = true //Så man inte sätter dit den flera gånger om. Kanske borde lära mig switches.
	}
}