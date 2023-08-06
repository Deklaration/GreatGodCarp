//pt+=0.01

//procent = pt/ft


draw_text(100,10,string("0,ft,pt: ") + string(lerp(0,ft,pt)))
draw_text(100,20,string("0,pt,ft: ") + string(lerp(0,pt,ft)))
draw_text(100,30,string("0,100,pt: ") + string(lerp(0,100,pt)))
draw_text(100,40,string("100,0,pt: ") + string(lerp(100,0,pt)))
draw_text(100,50,string("ft,pt,100: ") + string(lerp(ft,pt,100)))
draw_text(100,60,string("0,ft,pt/100: ") + string(lerp(0,ft,pt/100)))
draw_text(100,70,string("pt/ft * 100: ") + string(pt/ft * 100))
draw_sprite(sProcessBar,0,200,70)
draw_sprite_ext(sProcessBox,0,180,70,(pt/ft * 100) * 0.4,1,0,c_white,1)
draw_text(100,80,string("ft/pt * 100: ") + string(ft/pt * 100))
draw_sprite(sProcessBar,0,200,80)
draw_sprite_ext(sProcessBox,0,1800,80,ft/pt * 100,1,0,c_white,1)

draw_text(100,100,string("ft: ") + string(ft))
draw_text(100,120,string("pt: ") + string(pt))