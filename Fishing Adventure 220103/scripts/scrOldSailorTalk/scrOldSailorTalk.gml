// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrOldSailorTalkGPT() {
	if (live_call()) return live_result;
    var item0 = "a sail [sItemsIcon,6]";
    var item1 = "some tar [sItemsIcon,7]";
    var item2 = "an anchor [sItemsIcon,8]";
    var hint = "";

    scrNewDialog();
    
    if (global.gotSail && global.gaveSail == false) {
        scrInventoryRemove(oKeyInventory, enumItem.Sail);
        global.gaveSail = true;
        if (global.gaveTar == false) {
            hint = "I think the old Witch uses tar in her potions. [scale,0.5]Don't tell her I called her a witch.";
        } else if (global.gaveAnchor == false) {
            hint = "My gut is telling you to head west.";
        }
        dialog[0] = "Would you look at that... That's a sail [sItemsIcon,6] !"
        dialog[1] = "Excellent find! Now we just need some tar [sItemsIcon,7] and an anchor [sItemsIcon,8]."
    }
    
    if (global.gotTar && global.gaveTar == false) {
        scrInventoryRemove(oKeyInventory, enumItem.Tar);
        global.gaveTar = true;
        if (global.gaveSail == false) {
            hint = "I think you can ask the tailor about a sail [sItemsIcon,6].";
        } else if (global.gaveAnchor == false) {
            hint = "My gut is telling you to head west.";
        }
        dialog[0] = string("Jolly good, that's tar [sItemsIcon,7]!");
        dialog[1] = string("Wonderful! Now we just need ") + string(item0) + string(" and ") + string(item2) + string(".");
    }
    
    if (global.gotAnchor && global.gaveAnchor == false) {
        scrInventoryRemove(oKeyInventory, enumItem.Anchor);
        global.gaveAnchor = true;
        if (global.gaveSail == false) {
            hint = "I think you can ask the tailor about a sail [sItemsIcon,6].";
        } else if (global.gaveTar == false) {
            hint = "I think the old Witch uses tar in her potions. [scale,0.5]Don't tell her I called her a witch.";
        }
        dialog[0] = string("Oh, that's an anchor [sItemsIcon,8]! An old one at that!");
        dialog[1] = string("Wonderful! Now we just need ") + string(item0) + string(" and ") + string(item2) + string(".");
    }
    
    if (global.gaveSail && global.gaveTar && global.gaveAnchor) {
        dialog[1] = string("Amazing! That's the last one! Now, let's get to work![BUILDBOAT]");
    }
    
    //dialog[2] = string(hint);
    talking = false;
}




function scrOldSailorTalk(){
	var item0 = "a sail [sItemsIcon,6]"
	var item1 = "some tar [sItemsIcon,7]"
	var item2 = "an anchor [sItemsIcon,8]"
	

	
	if global.gotSail = false && global.gotTar = false && global.gotAnchor = false //Man ber om ledtråd
	{
	scrNewDialog()
	dialog[0] = "I think you can ask the tailor about a sail [sItemsIcon,6]!"
	talking = false
	}
	
	
	if global.gotSail = true && global.gaveSail = false //Ger segel
	{
	if talking = true
	{
	scrInventoryRemove(oKeyInventory,enumItem.Sail)
	global.gaveSail = true
	talking = false
	}
	if global.gaveTar = false
	{
		hint = "I think the old Witch uses tar in her potions. [scale,0.5]Don't tell her I called her a witch."
	}
	else if global.gaveAnchor = false
	{
		hint = "My gut is telling you to head west."
	}
	
	
	scrNewDialog()
	dialog[0] = string("Would you look at that... That's ") + string(item0) + string("![repetition]")
	
	if global.gaveAnchor = false && global.gaveTar = false
	{
		dialog[1] = string("Excellect find! Now we just need ") + string(item1) + string(" and ") + string(item2) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveAnchor = true && global.gaveTar = false
	{
		dialog[1] = string("Excellect find! Now we just need ") + string(item1) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveAnchor = false && global.gaveTar = true
	{
		dialog[1] = string("Excellect find! Now we just need ") + string(item2) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveAnchor = true && global.gaveTar = true
	{
		dialog[1] = string("Amazing! That's the last one! Now, let's get to work![BUILDBOAT]")
	}
	talking = false
	}
	
	
	else if global.gotTar = true && global.gaveTar = false //Ger tjära
	{
	if talking = true
	{
	scrInventoryRemove(oKeyInventory,enumItem.Tar)
	global.gaveTar = true
	talking = false
	}
	if global.gaveSail = false
	{
		hint = "I think you can ask the tailor about a sail [sItemsIcon,6]."
	}
	else if global.gaveAnchor = false
	{
		hint = "My gut is telling you to head west."
	}
	
	
	
	
	scrNewDialog()
	dialog[0] = string("Jolly good, that's tar [sItemsIcon,7] ![repetition]")
	if global.gaveAnchor = false && global.gaveSail = false
	{
		dialog[1] = string("Wonderful! Now we just need ") + string(item0) + string("and ") + string(item2) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveAnchor = true && global.gaveSail = false
	{
		dialog[1] = string("Wonderful! Now we just need ")  + string(item0) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveAnchor = false && global.gaveSail = true
	{
		dialog[1] = string("Wonderful! Now we just need ") + string(item2) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveAnchor = true && global.gaveSail = true
	{
		dialog[1] = string("Amazing! That's the last one! Now, let's get to work![BUILDBOAT]")
	}
	
	}
	
	
	else if global.gotAnchor = true && global.gaveAnchor = false //Ger ankare
	{
	if talking = true
	{
	scrInventoryRemove(oKeyInventory,enumItem.Anchor)
	global.gaveAnchor = true
	talking = false
	}
	if global.gaveSail = false
	{
		hint = "I think you can ask the tailor about a sail [sItemsIcon,6]."
	}
	else if global.gaveTar = false
	{
		hint = "I think the old Witch uses tar in her potions. /n[scale,0.5]Don't tell her I called her a witch."
	}
	
	
	
	
	scrNewDialog()
	dialog[0] = "Oh, that's an anchor [sItemsIcon,8] ! An old one at that![repetition]"
	if global.gaveTar = false && global.gaveSail = false
	{
		
		dialog[1] = string("Wonderful! Now we just need ") + string(item0) + string("and ") + string(item2) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveTar = true && global.gaveSail = false
	{
		dialog[1] = string("Wonderful! Now we just need ")  + string(item0) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveTar = false && global.gaveSail = true
	{
		dialog[1] = string("Wonderful! Now we just need ") + string(item2) + string(".")
		dialog[2] = string(hint)	
	}
	
	if global.gaveTar = true && global.gaveSail = true
	{
		dialog[1] = string("Amazing! That's the last one! Now, let's get to work![BUILDBOAT]")
	}
	
	}

if instance_exists(oText)
{
var repetition = string_pos("repetition", oText.textmessage);
	if (repetition > 0) 
	{
	scrNewDialog()
	dialog[0] = string(hint) + string("[repetition]")
	}
var BUILDBOAT = string_pos("BUILDBOAT", oText.textmessage);
	if (BUILDBOAT > 0) 
	{
	buildboat = true
	}
}



}