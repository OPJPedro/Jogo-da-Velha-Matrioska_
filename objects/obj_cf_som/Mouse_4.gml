//if (som_jogo >= 1){som_jogo = 0.9} else if (som_jogo <= 0) {som_jogo = 0.1}
//if som_alto {som_jogo += 0.1} else {som_jogo -= 0.1}
audio_play_sound(snd_botao, 80, false, global.snd_sfx)
if !sfx{
	
if (som_alto) 
{
    global.snd_volume += 0.1;
} 
else 
{
    global.snd_volume -= 0.1;
}

// Limites
if (global.snd_volume >= 1) global.snd_volume = 1;
if (global.snd_volume <= 0) global.snd_volume = 0;
} else 
{
if (som_alto) 
{
    global.snd_sfx += 0.1;
} 
else 
{
    global.snd_sfx -= 0.1;
}

// Limites
if (global.snd_sfx >= 1) global.snd_sfx = 1;
if (global.snd_sfx <= 0) global.snd_sfx = 0;
}


