instance_create_layer(x-25, y, "Instances", obj_item_shot);
instance_create_layer(x+25, y, "Instances", obj_item_shot);
audio_play_sound(srd_shot, 10, false);

if (colisao_powerup == true) {
	alarm[0] = room_speed;
}
