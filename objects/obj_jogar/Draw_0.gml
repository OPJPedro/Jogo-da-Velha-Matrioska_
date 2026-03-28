draw_self()
draw_set_font(font_gothic)
var _margen = 5

if (global.jogo_terminou == true)
{
	draw_set_colour(#fbc997)
	draw_text(x - 72,y - 10, "JOGAR NOVAMENTE!")
}else 
{
	draw_set_colour(#fbc997)
	draw_text(x - 25,y - 10, "JOGAR")
}
