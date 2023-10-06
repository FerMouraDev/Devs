if (room != Menu && room != Menu_Opcoes)
{
	if (room == RoomMultiplayer)
	{
		draw_text(70, 15, "Vidas Player 1: " + string(global.vidasPlayer1));
		draw_text(room_width-70, 15, "Vidas Player 2: " + string(global.vidasPlayer2));
	}
	else
	{
		draw_text(room_width-100,room_height - 30, "Vidas: " + + string(global.vidas));
	}
}
