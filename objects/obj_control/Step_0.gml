if (!instance_exists(obj_blocoAmarelo) && 
!instance_exists(obj_blocoAzul) &&
!instance_exists(obj_blocoCinza) &&
!instance_exists(obj_blocoRoxo) &&
!instance_exists(obj_blocoVerde) &&
!instance_exists(obj_blocoVermelho) && 
room != Menu && room != Menu_Opcoes && room != RoomMultiplayer)
{
	if(room != Room20){
		room_goto_next();
		scr_sala();
	}
	else
	{
		room_goto(Room01);
	}
	audio_play_sound(srd_levelup, 10, false);
}
