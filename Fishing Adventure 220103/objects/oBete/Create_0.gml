particles = 1;

pointbetweenx = 0
pointbetweeny = 0 
water = false
vspeed = -global.angle / 11.25//45
hookx = 0
hooky = 0
timer = 50
top = false
right = false
linereach = false
rot = false
angle = 0
fiskid = oNothing
holddownspacetimer = 50
fiskendrarsig = false
fiskenoutofroom = false
timerafterlosttobottom = 1

baitpower = 1 //Antal sekunder det tar för oPullBarBox att färdas från en sida till den andra. Ju högre, desto enklare.

success = false
fail = false
fishgotawayspritetimer = 120

//När man fastnar på botten
losttobottom = false
losttobottomx = -1000
losttobottomy = -1000
losttobottomxscale = self.image_xscale
losttobottomyscale = self.image_yscale
losttobottomangle = self.angle
losttobottomminusline = 0

instance_create_depth(x,y,0,oHitBete)
instance_create_depth(self.x,self.y,-10,oRope)