
jogador = global.jogador_1;

//Criando a condição de vitória.
for (var i = 0; i < 3; i++)
{
	//linhas
	//Verifica toda linha ao mesmo tempo, se o valor da primeira linha for diferente de 0, e tiver uma linha
	//completa marcada com 1, ou 2. Envia mensagem de vitória
	if (tabuleiro[i][0] == jogador && tabuleiro[i][0] == tabuleiro[i][1] && tabuleiro[i][0] == tabuleiro[i][2])
	{
		global.jogo_terminou = true;
		p_ganhou = true
		if (jogador == 1 && !contabiliza_ponto)
		{
			global.qntd_vitoria_p1 ++;
			contabiliza_ponto = true;
		}else if (jogador == 2 && !contabiliza_ponto){
			global.qntd_vitoria_p2++;
			contabiliza_ponto = true;
		}
	} 
	
	//colunas
	//Verifica todas as colunas ao mesmo tempo, só contando vitória se uma coluna inteira estiver marcada.
	else if (tabuleiro[0][i] == jogador && tabuleiro[0][i] == tabuleiro [1][i] && tabuleiro[0][i] == tabuleiro[2][i])
	{
		global.jogo_terminou = true;
		p_ganhou = true
		if (jogador == 1 && !contabiliza_ponto)
		{
			global.qntd_vitoria_p1 ++;
			contabiliza_ponto = true;
		}else if (jogador == 2 && !contabiliza_ponto){
			global.qntd_vitoria_p2++;
			contabiliza_ponto = true;
		}
	}	
	
	
}
//diagonal 
if 
	(
	tabuleiro[0][0] == jogador && tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[0][0] == tabuleiro[2][2] or 
	tabuleiro[2][0] == jogador && tabuleiro[2][0] == tabuleiro[1][1] && tabuleiro[2][0] == tabuleiro[0][2]	
	)
	{
		p_ganhou = true
		if (jogador == 1 && !contabiliza_ponto)
		{
			global.qntd_vitoria_p1 ++;
			contabiliza_ponto = true;
		}else if (jogador == 2 && !contabiliza_ponto){
			global.qntd_vitoria_p2++;
			contabiliza_ponto = true;
		}
	}  



if (p_ganhou == true && !inicia_alarme)
{
	inicia_alarme = true
	if global.qntd_vitoria_p1 == 2 or global.qntd_vitoria_p2 ==2
	{
		alarm[1] = room_speed * 3;
	}else{
		alarm[0] = room_speed * 2;
	}
	
}

if ativa_alarme && !inicia_alarme
{
	inicia_alarme = true;
	alarm[0] = room_speed * 2;
}