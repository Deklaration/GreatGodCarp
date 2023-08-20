function scrFishdex(_sida){
//if (live_call()) return live_result;

//var _sida = sida

scrDrawSet(fFishdex,c_black,fa_center)
draw_text_ext_color(self.x-70, self.y+80,"Fishdex",100,10000,c_black,c_black,c_black,c_black,alpha)

scrDrawSet(fFishdexSmall,c_black,fa_left)
//scrDrawSet(fTextboxSmall,c_black,fa_left)


if _sida = 1
{
page = _sida
}
else
{
	page = (_sida * 6) - 5
}


for (var i = 0; i < 6; ++i) { 

	if i < 3+page //vänstersida. Lägg in if statements här om det är första sidan i fishdex eller typ sida 2
	{
		var xx = 0 
		var yy = 0
	}
	if i > 1+page // högersida
	{
		var xx = 70
		var yy = 150
	}
	
var rarityIndex;
switch(global.fisharray[i,11])
{
    case "":
        rarityIndex = 0;
        break;
    case 1:
        rarityIndex = 0;
        break;
    case 5:
        rarityIndex = 1;
        break;
    case 10:
        rarityIndex = 2;
        break;
    case 50:
        rarityIndex = 3;
        break;
    case 500:
        rarityIndex = 4;
        break;
    default:
        rarityIndex = 0;
        break;
}
	
	
	
	if i+page <= global.numberoffish 
	{
	
	if global.vegan = false
	{
	draw_sprite_ext(global.fisharray[i+page,1],0,self.x-70 + sprite_get_width(global.fisharray[i+page,1])/2 + (xx * 2),self.y+110 + (50 * (i)) -yy,1,1,0,global.fishcolor[i+page],alpha)
	}
	
	else
	
	{
	draw_sprite_ext(global.fisharray[i+page,2],0,self.x-70 + sprite_get_width(global.fisharray[i+page,2])/2 + (xx * 2),self.y+110 + (50 * (i)) - yy,1,1,0,global.fishcolor[i+page],alpha)
	}
	
	if global.fishcolor[i+page] = c_white
	{
	draw_sprite_ext(sRarity,rarityIndex,self.x-134 + (xx * 2),self.y+120 + (50 * (i)) - yy,1,1,0,c_white,alpha)
	}
	
	draw_text_ext_color(self.x-130 + (xx * 2), self.y+115 + (50 * (i)) - yy,string(fishinfotype[i+page]),10,10000,c_black,c_black,c_black,c_black,alpha)
	}

}

}
