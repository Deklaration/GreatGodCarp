scrDrawSet(fTextbox,c_black,fa_center)
scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,0)

draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 88,"Yes!",c_black,c_black,c_black,c_black,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 88,"No!",c_black,c_black,c_black,c_black,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 89,"Yes!",yescolor,yescolor,yescolor,yescolor,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 89,"No!",nocolor,nocolor,nocolor,nocolor,alpha)