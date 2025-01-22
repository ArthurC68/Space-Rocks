/// @description Insert description here
// You can write your code in this editor
score = 0;
lives = 5;

draw_set_font(fnt_text);

randomize();


repeat(100){
		var xx = irandom_range(0,room_width)
		var yy = irandom_range(0,room_height)
	
		instance_create_layer(xx,yy,"Instances_1",obj_star)
	}