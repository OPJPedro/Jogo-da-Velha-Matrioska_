//Criando a condição de vitória.
for (var i = 0; i < 3; i++)
{
	//linhas
	//Verifica toda linha ao mesmo tempo, se o valor da primeira linha for diferente de 0, e tiver uma linha
	//completa marcada com 1, ou 2. Envia mensagem de vitória
	if (tabuleiro[i][0] != 0 && tabuleiro[i][0] == tabuleiro[i][1] && tabuleiro[i][0] == tabuleiro[i][2])
	{
		global.jogo_terminou = true;
		room_goto(rm_fim_game)
	}; 
	
	//colunas
	//Verifica todas as colunas ao mesmo tempo, só contando vitória se uma coluna inteira estiver marcada.
	if (tabuleiro[0][i] != 0 && tabuleiro[0][i] == tabuleiro [1][i] && tabuleiro[0][i] == tabuleiro[2][i])
	{
		global.jogo_terminou = true;
		room_goto(rm_fim_game)
	};	
};

//diagonal
if 
(
tabuleiro[0][0] != 0 && tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[0][0] == tabuleiro[2][2] or 
tabuleiro[2][0] != 0 && tabuleiro[2][0] == tabuleiro[1][1] && tabuleiro[2][0] == tabuleiro[0][2]	
)
{
	global.jogo_terminou = true;
	room_goto(rm_fim_game)
}


