
/*

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