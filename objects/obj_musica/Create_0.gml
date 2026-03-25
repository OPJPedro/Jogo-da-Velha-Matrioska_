//Toca a música de fundo, comm prioridade 80 e com loop
audio_play_sound(snd_background, 80, true);

//Define o volume da música. De 0 à 1. Ou seja, NÃO COLOCAR NÚMEROS MAIORES QUE 1 COMO 80
//O volume é a variável "global.snd_volume" que poderá ser aumentada ou diminuida nas configurações.
audio_sound_gain(snd_background,global.snd_volume);