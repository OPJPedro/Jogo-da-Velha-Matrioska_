/*
if(global.qntd_vitoria_p1 == 2)
{
	finaliza_jogo = true;
	room_goto(rm_fim_game)
	global.qntd_vitoria_p1 = 0
	global.qntd_vitoria_p2 = 0
	randomise()
}else if (global.qntd_vitoria_p2 == 2)
{
	finaliza_jogo = true;
	room_goto(rm_fim_game)
	global.qntd_vitoria_p1 = 0
	global.qntd_vitoria_p2 = 0
	randomise()
}


inicia_alarme = false

if finaliza_jogo && !inicia_alarme
{
	inicia_alarme = true;
	alarm[0] = room_speed * 2
}