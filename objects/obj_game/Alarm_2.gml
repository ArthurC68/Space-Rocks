/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(room != rm_game){
	exit;
}

if(choose(0,1) == 0){
	//go down the side
	var _xxx = choose(0,room_width);
	var _yyy = irandom_range(0,room_height)
}
else {
	var _xxx = irandom_range(0,room_height);
	var _yyy = choose(0,room_height);
}
instance_create_layer(_xxx,_yyy,"Instances",obj_bonus);
alarm[2] = 4*room_speed;