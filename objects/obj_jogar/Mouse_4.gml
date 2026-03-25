

if global.jogo_terminou {
	room_goto(rm_game)
}else{
	global.jogo_terminou = false;
	room_goto(rm_selecao)
}