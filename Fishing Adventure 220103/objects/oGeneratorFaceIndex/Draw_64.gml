
/*
var genfaceindex, sTempGenFaceIndex
genfaceindex = surface_create(44,44)
surface_set_target(genfaceindex)
draw_clear_alpha(c_green, 0)
draw_sprite_ext(sNPC_Clothes_Base,0,x,y,2,1,0,active.skincolora[active.skincolor],1)
draw_sprite_ext(clothes,0,x,y,2,1,0,active.color[active.clothescolor],1)
draw_sprite_ext(sNPC_Head_Base,0,x,y,2,1,0,active.skincolora[active.skincolor],1)
draw_sprite_ext(eyes,0,x,y,2,1,0,c_white,1)
draw_sprite_ext(nose,0,x,y,2,1,0,active.skincolora[active.skincolor],1)
draw_sprite_ext(mouth,0,x,y,2,1,0,active.skincolora[active.skincolor],1)
draw_sprite_ext(ears,0,x,y,2,1,0,active.skincolora[active.skincolor],1)
draw_sprite_ext(hair,0,x,y,2,1,0,active.haircolora[active.haircolor],1)
sTempGenFaceIndex = sprite_create_from_surface(genfaceindex,0,0,44,44,true,true,0,0)
surface_reset_target()
surface_free(genfaceindex)
sprite_save(sTempGenFaceIndex,0,"Temp_Gen_Face_Index.png")
draw_sprite(sTempGenFaceIndex,0,50,50)
sprite_delete(sTempGenFaceIndex)

*/



draw_sprite_ext(sGeneratorFramebck,0,oText.x1+37,oText.y1+39,1,1,0,global.color[active.clothescolor],alpha)
draw_sprite_ext(sNPC_Clothes_Base,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.skincolor],alpha)
draw_sprite_ext(clothes,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.clothescolor],alpha)
draw_sprite_ext(sNPC_Head_Base,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.skincolor],alpha)
draw_sprite_ext(nose,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.skincolor],alpha)
draw_sprite_ext(mouth,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.skincolor],alpha)
draw_sprite_ext(ears,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.skincolor],alpha)

if hair != sNPC_Hair01
{
draw_sprite_ext(eyes,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,c_white,alpha)
draw_sprite_ext(hair,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.haircolor],alpha)
}
else
{
draw_sprite_ext(hair,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,global.color[active.skincolor],alpha)
draw_sprite_ext(eyes,0,oText.x1+37,oText.y1+39+20,facesize,facesize,0,c_white,alpha)
}

draw_sprite_ext(sGeneratorFrame,0,oText.x1+37,oText.y1+39,1,1,0,global.color[active.haircolor],alpha)