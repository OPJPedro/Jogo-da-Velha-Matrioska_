

if global.jogo_terminou {
	room_goto(rm_game)
}else{
	global.jogo_terminou = false;
	room_goto(rm_selecao)
}
audio_play_sound(snd_botao, 80, false, global.snd_sfx)