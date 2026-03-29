image_alpha = .2

if selecao_per == 1 {sprite_index = spr_zumbi_perfil}
if selecao_per == 2 {sprite_index = spr_robo_perfil}
if selecao_per == 3 {sprite_index = spr_mago_perfil}
if selecao_per == 4 {sprite_index = spr_doce_perfil}
if selecao_per == 5 {sprite_index = spr_aleatorio
	randomise()
	//_aleatorio = choose(personagem_zumbi[size_peca - 1], personagem_robo[size_peca - 1], personagem_mago[size_peca - 1], personagem_doce[size_peca - 1])
	global.aleatorio = choose("zumbi","robo", "mago", "doce")
	}

