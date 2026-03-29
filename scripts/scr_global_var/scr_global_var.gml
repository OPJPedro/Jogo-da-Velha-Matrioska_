//verifica qual é o jogador. 1 ou 2.
global.jogador_1 = noone;

//Inicia o fluxo de turnos. Na qual será aleatório qual dos dois irá iniciar
randomise()
global.vez_do_jogador = choose(1,2);
global.peca_size = noone;
global.jogo_terminou = false;

global.snd_volume = 0.8;

//global.selecao_personagem = noone
global.personagem_p1 = noone
global.personagem_p2 = noone
global.qntd_vitoria_p1 = 0;
global.qntd_vitoria_p2 = 0;