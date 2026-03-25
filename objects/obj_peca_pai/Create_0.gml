fixo = false;
estado = "parado"
bloco_tamanho = 0; // 0 = vazio, 1 = pequeno, 2 = médio, 3 = grande
personagem = "zumbi" //mago, zumbi, doce, robo
dono_peca = noone; //jogador 1 ou 2


//lista de sprites:

personagem_zumbi	= [spr_zumbi_pequeno, spr_zumbi_medio, spr_zumbi_grande];
personagem_robo		= [spr_robo_pequeno, spr_robo_medio, spr_robo_grande];
personagem_mago		= [spr_mago_pequeno, spr_mago_medio, spr_mago_grande]
personagem_doce		= [spr_doce_pequeno, spr_doce_medio, spr_doce_grande]

randomise()

if sel == 1 {personagem = "zumbi"} else if sel == 2{personagem = "robo"} else if sel == 3 {personagem = "mago"} else if sel == 4 {personagem = "doce"} else if sel = 5 {personagem = choose("zumbi", "robo", "mago", "doce")}
//seleciona
switch (personagem)
{case "zumbi":
	sprite_index = personagem_zumbi[size_peca - 1]	
	break
	case "robo":
	sprite_index = personagem_robo[size_peca - 1]
	break
	case "mago":
	sprite_index = personagem_mago[size_peca - 1]
	break
	case "doce":
	sprite_index = personagem_doce[size_peca - 1]
	break
}
