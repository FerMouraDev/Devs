//if (!saiu)
//{
//	if (instance_exists(obj_taco))
//	{
//		//if (obj_taco.x <= x)
//		//{
//		//	x = obj_taco.x + (x - obj_taco.x);
//		//}
//		//else if (obj_taco.x > x)
//		//{
//		//	x = obj_taco.x - (obj_taco.x - x);
//		//}
//		//if (obj_taco.x == x)
//		//{
//			x = obj_taco.x + (x - obj_taco.x);
//		//}
//	}
//	if (instance_exists(obj_tacoTamanho1))
//	{
//		//if (obj_tacoTamanho1.x < x)
//		//{
//		//	x = obj_tacoTamanho1.x + (x - obj_tacoTamanho1.x);
//		//}
//		//if (obj_tacoTamanho1.x > x)
//		//{
//		//	x = obj_tacoTamanho1.x - (obj_tacoTamanho1.x - x);
//		//}
//		//if (obj_tacoTamanho1.x == x)
//		//{
//			x = obj_tacoTamanho1.x + (x - obj_tacoTamanho1.x);
//		//}
//	}
//	x = clamp(x, 32, room_width-32);
//}
if (speed == 0)
{
	if (instance_exists(obj_taco))
	{
		//if (obj_taco.x <= x)
		//{
		//	x = obj_taco.x + (x - obj_taco.x);
		//}
		//else if (obj_taco.x > x)
		//{
		//	x = obj_taco.x - (obj_taco.x - x);
		//}
		//if (obj_taco.x == x)
		//{
			x = obj_taco.x;
		//}
	}
	if (instance_exists(obj_tacoTamanho1))
	{
		//if (obj_tacoTamanho1.x < x)
		//{
		//	x = obj_tacoTamanho1.x + (x - obj_tacoTamanho1.x);
		//}
		//if (obj_tacoTamanho1.x > x)
		//{
		//	x = obj_tacoTamanho1.x - (obj_tacoTamanho1.x - x);
		//}
		//if (obj_tacoTamanho1.x == x)
		//{
			x = obj_tacoTamanho1.x;
		//}
	}
	x = clamp(x, 32, room_width-32);
}
