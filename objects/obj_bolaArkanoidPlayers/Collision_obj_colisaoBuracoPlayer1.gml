instance_destroy();
if (!instance_exists(obj_bolaArkanoidPlayers) && !instance_exists(obj_bolaArkanoidMultPlayers))
{
	global.vidasPlayer1--;

	if (global.vidasPlayer1 > 0)
	{
		instance_destroy();
		if (instance_exists(obj_tacoPlayer1) || instance_exists(obj_tacoPlayer2))
		{
			instance_create_layer(xstart, ystart, "Instances", obj_bolaArkanoid);
		}
		if (instance_exists(obj_tacoTamanho1))
		{
			instance_create_layer(xstart, ystart, "Instances", obj_bolaArkanoid);
		}
		audio_play_sound(srd_lose, 10, false);
	}
	else
	{
		global.vidasPlayer1 = 3;
		audio_play_sound(srd_gameover, 10, false);
	}
}