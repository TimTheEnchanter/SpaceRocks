/// @description Insert description here
// You can write your code in this editor
switch(room){
	
	case game:
		draw_text(20,20,"SCORE: "+string(score));
		draw_text(20,40,"LIVES: "+string(lives));
		break;
		
	case start:
	draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2,100,"SPACE ROCKS",3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2, 200, 
			@"Score 1000 points to win
Up: Move
Left/Right: Change direction
Space: Shoot

>> Press Enter to Start <<"
		);
		draw_set_halign(fa_left);
		break;
		
	case win:
	draw_set_halign(fa_center);
		var c = c_silver;
		draw_text_transformed_color(
			room_width/2,100,"YOU WIN!",3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2, 300, 
			"Press Enter to Restart"
		);
		draw_set_halign(fa_left);
	
		break;
	
	case lose:
	draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2,150,"YOU LOSE!",3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2, 250, 
			"Final Score: "+string(score)
		);
		draw_text(
			room_width/2, 300, 
			"Press Enter to Restart"
		);
		draw_set_halign(fa_left);
	
		break;
}

draw_set_font(text);