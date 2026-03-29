draw_self()
//draw_text(x, y - 50, estado)

var _cx = x;
var _cy = y;
var _w = sprite_width;
var _h = sprite_height;

if global.personagem_p1 == global.personagem_p2 
{
	if (jogador == 2)
	{
		draw_set_color(c_blue);
		draw_rectangle(_cx - _w/2, _cy - _h/2, _cx + _w/2, _cy + _w/2, true)
	}
}
