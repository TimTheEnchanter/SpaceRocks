if(keyboard_check_pressed(vk_enter))
{
	switch(room)
	{
		case start:
			room_goto(game);
			break;
		case win:
		case lose:
			game_restart();
			break;
	
	}
}

if(room == game)
{
	if(score >= 1000)
	{
		room_goto(win);	
		audio_play_sound(snd_win, 1, false);
	}

	if(lives <= 0)
	{
		room_goto(lose);
		audio_play_sound(snd_lose, 1, false);
	}
}