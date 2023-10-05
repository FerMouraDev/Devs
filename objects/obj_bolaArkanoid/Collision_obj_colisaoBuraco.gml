instance_destroy();
if (!instance_exists(obj_bolaArkanoidMult) && !instance_exists(obj_bolaArkanoid))
{
	global.vidas--;

	if (global.vidas > 0)
	{
		instance_destroy();
		if (instance_exists(obj_taco))
		{
			instance_create_layer(obj_taco.x, ystart, "Instances", obj_bolaArkanoid);
		}
		if (instance_exists(obj_tacoTamanho1))
		{
			instance_create_layer(obj_tacoTamanho1.x, ystart, "Instances", obj_bolaArkanoid);
		}
		audio_play_sound(srd_lose, 10, false);
	}
	else
	{
		//global.pontuacao = 0;
		global.vidas = 3;
		room_goto(Room01);
		audio_play_sound(srd_gameover, 10, false);
	}
}