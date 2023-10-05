	if (obj_checkbox_efeito.image_index == 1)
	{
		volume = 1;
		obj_checkbox_efeito.image_index = 0;
		audio_play_sound(srd_colisao_powerup, 10, false);
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