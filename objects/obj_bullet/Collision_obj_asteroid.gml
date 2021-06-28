/// @description Insert description here
// You can write your code in this editor
instance_destroy();

score += 10;

audio_play_sound(snd_die, 1, false);

with(other){
	instance_destroy();
	
	if(sprite_index == big_asteroid)
	{
		repeat(2){
		var ass = instance_create_layer(x,y,"Instances", obj_asteroid);
		ass.sprite_index = medium_asteroid;
		}
	}
	else if(sprite_index == medium_asteroid)
	{
		repeat(2){
		var ass = instance_create_layer(x,y,"Instances", obj_asteroid);
		ass.sprite_index = small_asteroid;
		}
	}
	
	repeat(10){
	instance_create_layer(x,y,"Instances", obj_debris);
	}
	
}