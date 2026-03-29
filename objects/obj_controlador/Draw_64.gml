
cheio = true;
var _anim = sin(current_time / 250) * 4;

for (var l = 0; l < 3; l++)
{
    for (var c = 0; c < 3; c++)
    {
        if (tabuleiro[l][c] == 0)
        {
            cheio = false;
            break;
        }
    }
    
    if (!cheio) break;
}

if (cheio)
{
	ativa_alarme = true;
	draw_sprite(spr_deu_velha, 0, 320, 380 - _anim)
	
}

