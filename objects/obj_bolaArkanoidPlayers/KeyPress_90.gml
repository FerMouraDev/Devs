if (!saiu)
{
	var sorteado = irandom(360);
	if (sorteado == 90)
	{
		sorteado = 95;
	}
	else if (sorteado == 270)
	{
		sorteado = 275;
	}
	direction = sorteado;
	saiu = true;
}
//global.grudarTaco = false;
speed = veloc;