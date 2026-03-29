if(global.qntd_vitoria_p1 == 2)
{
	show_message(global.personagem + " VENCEU")
	room_goto(rm_fim_game)
	global.qntd_vitoria_p1 = 0
	global.qntd_vitoria_p2 = 0
	randomise()
}else if (global.qntd_vitoria_p2 == 2)
{
	show_message( global.personagem + " VENCEU")
	room_goto(rm_fim_game)
	global.qntd_vitoria_p1 = 0
	global.qntd_vitoria_p2 = 0
	randomise()
}
