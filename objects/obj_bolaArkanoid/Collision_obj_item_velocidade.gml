obj_bolaArkanoid.speed += 7;
move_bounce_all(true);
instance_destroy(other);
audio_play_sound(srd_colisao, 10, false);