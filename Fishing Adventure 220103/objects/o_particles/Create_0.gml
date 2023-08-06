ps = part_system_create();

pt_splash = part_type_create();

ps_pull = part_system_create();

pt_pull = part_type_create();


//if state = "fish"
//{


part_type_shape(pt_splash,pt_shape_disk);
part_type_size(pt_splash,0.1,0.3,0,0);
part_type_scale(pt_splash,0.1,0.1);
part_type_alpha3(pt_splash,1,1,0);
part_type_speed(pt_splash,1,2,0,0);
part_type_direction(pt_splash,0,180,0,0);
part_type_gravity(pt_splash,0.1,270);
part_type_orientation(pt_splash,0,0,0,0,1);
part_type_life(pt_splash,15,30);

//}
///*
//if state = "ute"
//{


//part_type_color1(pt_pull,global.color[24])
part_type_shape(pt_pull,pt_shape_square);
part_type_size(pt_pull,0.1,0.3,0,0);
part_type_scale(pt_pull,0.1,0.1);
part_type_alpha3(pt_pull,0.3,1,0);
part_type_speed(pt_pull,1,3,0,0);
part_type_direction(pt_pull,0,270,0,3);
part_type_gravity(pt_pull,0,270);
part_type_orientation(pt_pull,0,0,0,0,1);
part_type_life(pt_pull,10,20);
/*
}

if state = "mitten"
{


part_type_color1(pt_mitten,global.color[12])
part_type_shape(pt_mitten,pt_shape_square);
part_type_size(pt_mitten,1.1,1.3,0.4,0);
part_type_scale(pt_mitten,0.1,0.1);
part_type_alpha3(pt_mitten,0.3,1,0);
part_type_speed(pt_mitten,1,2,0,0);
part_type_direction(pt_mitten,0,270,0,3);
part_type_gravity(pt_mitten,0,270);
part_type_orientation(pt_mitten,0,0,0,0,1);
part_type_life(pt_mitten,15,30);

}

if state = "inne"
{
	


part_type_color1(pt_inne,global.color[15])
part_type_shape(pt_inne,pt_shape_square);
part_type_size(pt_inne,1.1,1.3,0.4,0);
part_type_scale(pt_inne,0.1,0.1);
part_type_alpha3(pt_inne,0.3,1,0);
part_type_speed(pt_inne,1,2,0,0);
part_type_direction(pt_inne,0,270,0,3);
part_type_gravity(pt_inne,0,270);
part_type_orientation(pt_inne,0,0,0,0,1);
part_type_life(pt_inne,15,30);

}

