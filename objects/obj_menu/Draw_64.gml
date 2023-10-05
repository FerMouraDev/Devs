/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_font(ft_menu);
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();

var x1 = gui_width/2;
var y1 = gui_height/2;
var margin = 50;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);
draw_set_halign(fa_center);

for(var i = 0; i < op_max; i++)
{
	var y2 = y1 + (margin*i);
	var string_w = string_width(options[i]);
	var string_h = string_width(options[i]);
	
	if(point_in_rectangle(m_x,m_y,x1 - string_w/2,y2 - string_h/4,x1 + string_w/2,y2 + string_h/4))
	{
		draw_set_color(c_yellow);
		index = i;
		if(mouse_check_button_pressed(mb_left)){
			if (index == 0)
			{
				room_goto(Room01);
				scr_sala();
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
		}
	}
	else
	{
		if (index == i)
		{
			draw_set_color(c_yellow);
		}
		else
		{
			draw_set_color(c_white);
		}
	}
	
	draw_text(x1, y2, options[i]);
}
