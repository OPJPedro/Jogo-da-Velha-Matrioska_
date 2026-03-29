if global.vez_do_jogador == jogador {
	
	//inicia máquina de estados
	switch (estado)
	{
		case "parado":
        image_angle = 0
        //SE O MOUSE ESTIVER EM CIMA DO OBJETO
        if position_meeting(mouse_x, mouse_y, id)
        {
            //SE O OBJETO NÃO ESTIVER FIXO E EU PRESSIONAR O BOTÃO ESQUERDO DO MOUSE
            if (fixo == false && mouse_check_button_pressed(mb_left))
            {
                //MUDA DE ESTADO
                estado = "movendo"
            }
        }

        break;
		
	case "movendo":
	
	global.jogador_1 = jogador
	// Balança a rotação em 10 graus para cada lado
    image_angle = sin(get_timer() / 100000) * 10;
	x = mouse_x;
	y = mouse_y;
	
	
	//SE o mouse soltar o botão esquerdo
    if mouse_check_button_released(mb_left)
    {
        estado = "parado";
        
        // Descobre qual bloco específico está embaixo do mouse/peça
        var _bloco = instance_position(x, y, obj_bloco);
        
        // Se soltou em cima de um bloco válido
        if (_bloco != noone)
        {
            // VERIFICAÇÃO DA MATRIOSKA: 
            // O bloco está vazio? OU a minha peça é MAIOR que a peça que já está lá?
            if (_bloco.bloco_valor == noone || size_peca > _bloco.bloco_tamanho && jogador != _bloco.bloco_valor)
            {
				
				with (obj_peca_pai) 
                {
                    // "other.id" é a peça que estamos soltando agora.
                    // "id" é a peça que o loop está verificando.
                    // Se não for eu mesmo, E estiver exatamente na posição do bloco:
                    if (id != other.id && x == _bloco.x && y == _bloco.y) 
                    {
                        instance_destroy();
                    }
                }
					
                // 1. Fixa a peça no centro do bloco
                fixo = true;
                x = _bloco.x;
                y = _bloco.y;
				image_angle = 0;
					
                // 2. Atualiza os dados do BLOCO
                _bloco.bloco_valor = jogador;
                _bloco.bloco_tamanho = size_peca;
				
                // 3. Atualiza os dados do GRID (Tabuleiro)
                var _ctrl = instance_find(obj_controlador, 0);
                _ctrl.tabuleiro[_bloco.linha][_bloco.coluna] = jogador;
                
                // 4. Passa o turno
                global.vez_do_jogador = 3 - global.vez_do_jogador;
                
                show_debug_message("Peça colocada! Grid atualizado.");
            }
            else 
            {
                // Se tentou comer uma peça do mesmo tamanho ou maior, o movimento é inválido.
                // Volta para a posição inicial.
                x = xstart;
                y = ystart;
                show_debug_message("Movimento inválido: a peça não é grande o suficiente.");
            }
        } 
        else // Se não soltou em cima de nenhum bloco
        {
            x = xstart;
            y = ystart;
        }
    }
	}
}