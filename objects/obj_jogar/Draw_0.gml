draw_self()
draw_set_font(font_gothic)
var _margen = 5

if (global.jogo_terminou == true)
{
	draw_set_colour(#fbc997)
	draw_text(x - 62,y - 6, "JOGAR NOVAMENTE!")
}else 
{
	draw_set_colour(#fbc997)
	draw_text(x - 20, y - 8, "JOGAR")
}
