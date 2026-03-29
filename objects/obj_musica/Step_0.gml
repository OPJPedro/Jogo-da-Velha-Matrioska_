if (keyboard_check_pressed(vk_f11))
{
    //Pegando se a tela ta cheia
    var _full = window_get_fullscreen();

    //Deixando a tela cheia se ela não esta cheia
    //Ou restaurando a tela se ela esta cheia
    window_set_fullscreen(!_full);
}

//Define o volume da música. De 0 à 1. Ou seja, NÃO COLOCAR NÚMEROS MAIORES QUE 1 COMO 80
//O volume é a variável "global.snd_volume" que poderá ser aumentada ou diminuida nas configurações.
audio_sound_gain(snd_background,global.snd_volume);

esc = keyboard_check(vk_escape);
if esc 
{
	room_goto(rm_configuracao)
}