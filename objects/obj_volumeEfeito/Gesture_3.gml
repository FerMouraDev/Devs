
if (obj_volumeEfeito.x >= 400 && obj_volumeEfeito.x <= 465)
{
	obj_volumeEfeito.x = mouse_x;
}
else
{
	if (mouse_x > 432.5)
	{
		obj_volumeEfeito.x = 465;
	}
	else
	{
		obj_volumeEfeito.x = 400;
	}
}

if (obj_volumeEfeito.x >= 400 && obj_volumeEfeito.x <= 465)
{
	obj_volumeEfeito.x = mouse_x;
}
else
{
	if (mouse_x > 432.5)
	{
		obj_volumeEfeito.x = 465;
	}
	else
	{
		obj_volumeEfeito.x = 400;
	}
}
var volume = (obj_volumeEfeito.x - 400)/65;
var num = audio_get_listener_count();
for(var i = 0; i < num; ++i)
{
	var info = audio_get_listener_info(i);
	var ind = info[?"index"];
	audio_set_master_gain(info[?"index"], volume);
	ds_map_destroy(info);
}
audio_play_sound(srd_colisao_powerup, 10, false);