if (live_call()) return live_result;
// obj_dot Step Event
if oBB_prot.freeze = false
{
var middle =  room_width/2// the middle x-coordinate of the line;
var amplitude = 150// the radius of obj_circle;
var period = 130// how fast the dot moves back and forth;
x = middle + amplitude * sin(time / period);
// You can replace current_time with a variable that increments each step to control speed
time += moveSpeed
}