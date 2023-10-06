// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_colicao_bola(){
	move_bounce_all(true);
	instance_destroy(other);
}

function scr_sorteio_item_powerup(){
	randomize();
	var sorteio = irandom(5);
	if (sorteio == 5)
	{
		instance_create_layer(x, y, "Itens", obj_item_powerup);
		audio_play_sound(srd_item_powerup, 10, false);
	}
}
