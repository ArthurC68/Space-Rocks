/// @description Insert description here
// You can write your code in this editor
if (room = rm_game){
	audio_play_sound(snd_start,3,false);
	repeat(8){
		var xx = choose(
			irandom_range(0,room_width*0.3),
			irandom_range(room_width*0.6,room_width)
		);
		var yy = choose(
			irandom_range(0,room_height*0.3),
			irandom_range(room_height*0.6,room_height)
		);
		instance_create_layer(xx,yy,"Instances",obj_astroid)
	}
	
	
}
alarm[0] = 60;	
