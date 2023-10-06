if (index == 0)
{
	room_goto(Room01);
}
else if (index == 1)
{
	scr_load();
}
else if (index == 2)
{
	room_goto(RoomMultiplayer);
}
else if (index == 3)
{
	room_goto(Menu_Opcoes);
}
else if(index == 4)
{
	game_end();
}