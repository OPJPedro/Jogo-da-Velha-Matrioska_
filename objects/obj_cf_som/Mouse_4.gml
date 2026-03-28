if (som_jogo >= 1){som_jogo = 0.9} else if (som_jogo <= 0.1) {som_jogo = 0}
if som_alto {som_jogo += 0.1} else {som_jogo -= 0.1}

global.snd_volume = som_jogo;

show_debug_message(global.snd_volume);


