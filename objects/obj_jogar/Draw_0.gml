draw_self()

if (global.jogo_terminou == true)
{
	draw_set_colour(c_black)
	draw_text(x - 70,y - 10, "JOGAR NOVAMENTE!")
}else 
{
	draw_set_colour(c_black)
	draw_text(x - 25,y - 10, "JOGAR")
}
