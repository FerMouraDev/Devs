colisao_powerup = true;
audio_play_sound(srd_colisao_powerup, 10, false);
instance_destroy(other);
alarm[0] = room_speed;
alarm[1] = room_speed*3;
