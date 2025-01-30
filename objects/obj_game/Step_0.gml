/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_gamemusic,1,true);

if (keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}
if(room = rm_game){
	if(score >= 1000){
		room_goto(rm_win);
		part_system_clear(global.ps);
		audio_play_sound(snd_win,3,false);
		
	}

	if(lives<= 0){
		room_goto(rm_gameover);
		audio_play_sound(snd_gameover,3,false)
		part_system_clear(global.ps);
	}
}


