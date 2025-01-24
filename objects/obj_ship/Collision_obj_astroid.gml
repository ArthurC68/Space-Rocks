/// @description Insert description here
// You can write your code in this editor

lives -=1;
speed = 0;

with(obj_game){
	
	alarm[1] = room_speed;
}


audio_play_sound(snd_destroy,1,false);

repeat (20){
		instance_create_layer(x,y,"Instances",obj_debris)
	}
instance_destroy();
part_system_clear(global.ps);
with(other){
	instance_destroy();
	
	
}