//draw_set_color(c_white)
//draw_text(x, y, "Agora a vez do jogador: " + string(global.vez_do_jogador))
draw_self()

if (global.vez_do_jogador == 2)
{
	draw_sprite(spr_vez, 1, x, y)
	//draw_text(x, y, "SUA VEZ")
	
} else if(global.vez_do_jogador == 1)
{
	draw_sprite(spr_vez, 0, 515, 615)
	//draw_text(515, 615, "SUA VEZ")
}

//win cima 515, 160
//win baixo 120, 610.
draw_sprite(spr_vitorias, global.qntd_vitoria_p2, 515, 160)
draw_sprite(spr_vitorias, global.qntd_vitoria_p1, 120, 610)