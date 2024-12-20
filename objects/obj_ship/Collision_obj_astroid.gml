/// @description Insert description here
// You can write your code in this editor
lives -=1;

x = room_width/2;
y= room_height/2;


repeat (10){
		instance_create_layer(x,y,"Instances",obj_debris)
	}