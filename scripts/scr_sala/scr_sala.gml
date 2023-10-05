
function scr_sala() {
	var val = 1;
	switch (room)
	{
	    case Room01: val = 1; break;
	    case Room02: val = 2; break;
	    case Room03: val = 3; break;
	    case Room04: val = 4; break;
	    case Room05: val = 5; break;
	    case Room06: val = 6; break;
	    case Room07: val = 7; break;
	    case Room08: val = 8; break;
	    case Room09: val = 9; break;
		case Room10: val = 10; break;
		case Room11: val = 11; break;
		case Room12: val = 12; break;
		case Room13: val = 13; break;
		case Room14: val = 14; break;
		case Room15: val = 15; break;
		case Room16: val = 16; break;
		case Room17: val = 17; break;
		case Room18: val = 18; break;
		case Room19: val = 19; break;
		case Room20: val = 20; break;
		default: val = 1;
	}

	var cont = 0;
	var loop = true;
	while(loop)
	{
		val -= 5;
		if (val >= 0)
		{
			cont += 1;
		}
		else
		{
			val += 5;
			loop = false;
		}
	}
	
	if (file_exists("saveSala.sav")) file_delete("saveSala.sav");
	ini_open("saveSala.sav");

	ini_write_real("sala", "n_sala", cont*5);
	ini_close();
}

function scr_load() {
	if (file_exists("saveSala.sav")) 
	{
		ini_open("saveSala.sav");
		var val = ini_read_real("sala","n_sala", 1);
		ini_close();
		if (val == 1 || val == 0)
		{
			room_goto(Room01);
		}
		else if (val == 5)
		{
			room_goto(Room05);
		}
		else if (val == 10)
		{
			room_goto(Room10);
		}
		else if (val == 15)
		{
			room_goto(Room15);
		}
		else if (val == 20)
		{
			room_goto(Room20);
		}
	}
}
