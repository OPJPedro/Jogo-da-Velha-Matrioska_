// clicar no knob ou barra
if (mouse_check_button_pressed(mb_left))
{
    var mx = mouse_x;
    var my = mouse_y;
    
    // área clicável (um pouco maior que a barra)
    if (mx > x1 && mx < x2 && abs(my - y_slider) < 10)
    {
        segurando = true;
    }
}

// soltar
if (mouse_check_button_released(mb_left))
{
    segurando = false;
}

// arrastar
if (segurando)
{
    var mx = mouse_x;
    
    // limitar dentro da barra
    mx = clamp(mx, x1, x2);
    
    // converter posição → valor (0 a 1)
    valor = (mx - x1) / (x2 - x1);
    
    // aplicar no volume
    global.snd_volume = valor;
}