if (saiu)
{
	move_bounce_solid(true);
	direction = point_direction(other.x, other.y, x, y);
	if (global.grudarTaco)
	{
		speed = 0;
		y = other.y-16;
	}
	else
	{
		audio_play_sound(srd_colisao, 10, false);
	}
}
