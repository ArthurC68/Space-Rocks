/// @description Insert description here
// You can write your code in this editor
var _instructions = 
@"Score 1,000 points to win!


UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENTER TO START <<";

switch (room){
	case rm_game:
		draw_text_color(20,20,"Score: "+string(score),100,100,100,100,1);
		draw_text_color(20,40,"Lives: "+string(lives),100,100,100,100,1);
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_purple;
			draw_text_transformed_color(room_width/2, 100, "SPACE ROCKS",3,3,0,c,c,c,c,1);
		
			draw_text(room_width/2,200,_instructions);

			draw_set_halign(fa_left);
			break;
	
	case rm_win:
		draw_set_halign(fa_center);
			var c = c_lime;
				draw_text_transformed_color(room_width/2, 100, "YOU WON!",3,3,0,c,c,c,c,1);
		
				draw_text(room_width/2,200,">> PRESS ENTER TO PLAY AGAIN <<");
				draw_set_halign(fa_left);
	
		break;
	
	
	case rm_gameover:
		draw_set_halign(fa_center);
				var c = c_red;
					draw_text_transformed_color(room_width/2, 100,"GAME OVER",3,3,0,c,c,c,c,1);
		
					draw_text(room_width/2,200,"FINAL SCORE: " + string(score));
					draw_text(room_width/2,250,">> PRESS ENTER TO PLAY AGAIN <<");
					draw_set_halign(fa_left);
	
		break;
}
