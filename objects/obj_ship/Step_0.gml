/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left)) {
	image_angle +=5;
}

if(keyboard_check(vk_right)) {
	image_angle -=5;
}

//Go Foraward

if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.07);
	part_type_life(global.pt,5,10);
}
else if (speed>0) {
	speed -= 0.03;
	part_type_life(global.pt,1,3);
}
else if (speed<0) {
	speed += 0.03;
}
	
//particle system


part_system_position(global.ps,x, y);
part_system_angle(global.ps, image_angle+90);

//speed cap
speed = clamp(speed,0,8);


move_wrap(true,true,sprite_width/2)

//Shooting
  
if(keyboard_check_pressed(vk_space)){
	var _inst = instance_create_layer(x,y,"Instances" , obj_bullet)
	_inst.direction = image_angle;
	_inst.image_angle = image_angle
	audio_play_sound(snd_shoot,3,false);
}

