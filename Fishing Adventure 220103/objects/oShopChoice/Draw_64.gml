scrDrawSet(fTextbox,c_black,fa_center)
scrNineSliceBoxStretched(sTextbox,x1,y1,x2,y2,0)
if oShop.question = 1
{
draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 85,"Yes!",c_black,c_black,c_black,c_black,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 85,"No!",c_black,c_black,c_black,c_black,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 86,"Yes!",buycolor,buycolor,buycolor,buycolor,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 86,"No!",sellcolor,sellcolor,sellcolor,sellcolor,alpha)
}
if oShop.question = 2
{
draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 85,"All!",c_black,c_black,c_black,c_black,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 85,"One!",c_black,c_black,c_black,c_black,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) - 20,camera_get_view_height(oCamera.cam) - 86,"All!",buycolor,buycolor,buycolor,buycolor,alpha)
draw_text_color((camera_get_view_width(oCamera.cam) / 2) + 20,camera_get_view_height(oCamera.cam) - 86,"One!",sellcolor,sellcolor,sellcolor,sellcolor,alpha)
}