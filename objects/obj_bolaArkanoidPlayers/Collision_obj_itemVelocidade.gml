move_bounce_all(true);
speed += 5;
instance_destroy(other);
instance_create_layer(x, y, "Instances", obj_explosao);
audio_play_sound(srd_explosao, 10, false);
