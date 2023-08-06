
function scrScreenshake(_magnitude,_frames){
/// @desc scrScreenshake(magnitude,frames)
/// @arg Magnitude sets the strength of the shake (distance range)
/// @arg Frames sets the length of the screenshake

with oCamera//(global.camera)
{
	if (_magnitude > shakeremain)
	{
		shakemagnitude = _magnitude;
		shakeremain = shakemagnitude;
		shakelenght = _frames;
	}
}
}