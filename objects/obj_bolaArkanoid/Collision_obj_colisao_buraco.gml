
global.vidas--;

if (global.vidas > 0)
{
	instance_destroy();
	instance_create_layer(obj_taco.x, ystart, "Instances", obj_bolaArkanoid);
	audio_play_sound(srd_lose, 10, false);
}
else
{
	global.pontuacao = 0;
	global.vidas = 3;
	room_goto(Room1);
	audio_play_sound(srd_gameover, 10, false);
}