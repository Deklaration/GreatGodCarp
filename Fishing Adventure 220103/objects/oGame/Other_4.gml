if instance_exists(oGenerator)
{
if oGenerator.startroom = room
{
	show_message(other)
	other.activate = true
}
}
/*if(instance_exists(oProt))
{
	with(oProt)
	{

		oCamera.x = oProt.x;
		oCamera.y = oProt.y;
	}
}