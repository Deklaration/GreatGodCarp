dyliquid_update();
/*
do {tension -=0.001} until (tension <= 0.001)//0.01;
do {dampening +=0.005} until (dampening >= 0.025)
do {spread +=0.013} until (spread >= 0.35)
do {wave +=0.01} until (wave >= 2)//0.5;
do {wavespeed +=0.1} until (wavespeed >= 2)
*/
if tension >=0.01
{
	tension -=0.0025
}

if dampening <=0.05
{
	dampening +=0.005
}
if spread <= 0.35
{
	spread +=0.013
}
if wave <=0.3
{
	wave +=0.01
}
if wavespeed <=1.2
{
	wavespeed +=0.1
}

if instance_exists(oBete)
{
	if oBete.water = true && splash = false
	{
		dyliquid_spash(oBete.x,3)
		splash = true
	}
}
else
{
	splash = false
}

    dyliquid_set_tension(tension);
    dyliquid_set_dampening(dampening);
    dyliquid_set_spread(spread);  
    dyliquid_set_wave(wave);
	dyliquid_set_speed(wavespeed);