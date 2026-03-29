
var _jogador = global.jogador_1;

//Criando a condição de vitória.
for (var i = 0; i < 3; i++)
{
	//linhas
	//Verifica toda linha ao mesmo tempo, se o valor da primeira linha for diferente de 0, e tiver uma linha
	//completa marcada com 1, ou 2. Envia mensagem de vitória
	if (tabuleiro[i][0] == _jogador && tabuleiro[i][0] == tabuleiro[i][1] && tabuleiro[i][0] == tabuleiro[i][2])
	{
		global.jogo_terminou = true;
		//room_goto(rm_fim_game)
		room_restart()
		if (_jogador == 1)
		{
			global.qntd_vitoria_p1++;
			show_debug_message(global.qntd_vitoria_p1)
		}else{
			global.qntd_vitoria_p2++;
			show_debug_message(global.qntd_vitoria_p2)
		}
	} 
	
	//colunas
	//Verifica todas as colunas ao mesmo tempo, só contando vitória se uma coluna inteira estiver marcada.
	else if (tabuleiro[0][i] == _jogador && tabuleiro[0][i] == tabuleiro [1][i] && tabuleiro[0][i] == tabuleiro[2][i])
	{
		global.jogo_terminou = true;
		//room_goto(rm_fim_game)
		room_restart()
				if (_jogador == 1)
		{
			global.qntd_vitoria_p1++;
		}else{
			global.qntd_vitoria_p2++;
		}
	}	
	
	
}
//diagonal 
if 
	(
	tabuleiro[0][0] == _jogador && tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[0][0] == tabuleiro[2][2] or 
	tabuleiro[2][0] == _jogador && tabuleiro[2][0] == tabuleiro[1][1] && tabuleiro[2][0] == tabuleiro[0][2]	
	)
	{
		if (_jogador == 1)
			{
				global.qntd_vitoria_p1 ++;
			}else{
				global.qntd_vitoria_p2 ++;
			}
		global.jogo_terminou = true;
		//room_goto(rm_fim_game)
		room_restart()

	}  

var _cheio = true;

for (var l = 0; l < 3; l++)
{
    for (var c = 0; c < 3; c++)
    {
        if (tabuleiro[l][c] == 0)
        {
            _cheio = false;
            break;
        }
    }
    
    if (!_cheio) break;
}

if (_cheio)
{
    show_message("Deu velha!");
	room_restart();
}

