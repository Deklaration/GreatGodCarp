if disable = false
{
//draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, .25);
//scrDrawShadow(90 + global.time,2,1,c_black,0.2)
draw_sprite_ext(sprite_index, image_index, x, y, xscale, 1, rotation, skincolor, image_alpha);
draw_sprite_ext(clothes,image_index,self.x,self.y,xscale,1,rotation,global.color[clothescolor],1)
//draw_sprite_ext(sProt_idle_hair,0,self.x,self.y,xscale,1,rotation,c_blue,1)
draw_sprite_ext(nose,image_index,self.x,self.y,xscale,1,rotation,global.color[nosecolor],1)
draw_text(x,y+10,global.catchFirstFish)

}