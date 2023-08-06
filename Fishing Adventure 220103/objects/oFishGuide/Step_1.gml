/// @description Ger fiskar rätt text i Fishdex
if (live_call()) return live_result;

for (var i = 1; i < global.numberoffish+1; ++i) {
   if global.fishinfo[i] != "Not found"
	{
	fishinfotype[i] = scrStringWrap(string(global.fisharray[i,4]) + string("\nCaught: ") + string(global.fishhowmanycaught[i]) + string("") + string("\nBiggest caught: ") + string(global.fishsize[i]) + " kg",140,"\n",false)
	//fishinfotype[i] = scrStringWrap(string(global.fisharray[i,4]) + string("\n") + string(global.fisharray[i,6]) + string("") + string("\nBiggest caught: ") + string(global.fishsize[i]) + " kg",140,"\n",false)
	}
	else
	{
	fishinfotype[i] = "Not found" 
	}
}