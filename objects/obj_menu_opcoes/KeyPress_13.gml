if (index == 0)
{
	if (obj_checkbox_musica.image_index == 1)
		obj_checkbox_musica.image_index = 0;
	else
		obj_checkbox_musica.image_index = 1;
}
else if (index == 1)
{
	var volume;
	if (obj_checkbox_efeito.image_index == 1)
	{
		volume = 1;
		obj_checkbox_efeito.image_index = 0;
	}
	else
	{
		volume = 0
		obj_checkbox_efeito.image_index = 1;
	}
	var num = audio_get_listener_count();
	for(var i = 0; i < num; ++i)
	{
		var info = audio_get_listener_info(i);
		var ind = info[?"index"];
		audio_set_master_gain(info[?"index"], volume);
		ds_map_destroy(info);
	}
}
else if(index == 2)
{
	room_goto(Menu)
}
