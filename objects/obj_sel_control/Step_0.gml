//Controles do player 1 na tela de seleção
if (!p1_ready)
{
    if (keyboard_check_pressed(ord("A"))) p1_index--;
    if (keyboard_check_pressed(ord("D"))) p1_index++;

    p1_index = clamp(p1_index, 1, 5); //limita os "slots" de personagem

    if (keyboard_check_pressed(ord("F")))
    {
        p1_ready = true; //selecionou o personagem
    }
}

//tira a seleção do personagem
if keyboard_check(ord("Q")) {p1_ready = false}

//Controles do player 2 na tela de seleção
if (!p2_ready)
{
    if (keyboard_check_pressed(vk_left))  p2_index--;
    if (keyboard_check_pressed(vk_right)) p2_index++;

    p2_index = clamp(p2_index, 1, 5);

    if (keyboard_check_pressed(vk_enter))
    {
        p2_ready = true;
    }
}

//tira a seleção do personagem
if keyboard_check(vk_backspace) {p2_ready = false}

//quando os dois players escolherem os personagens
if (p1_ready && p2_ready)
{
    global.personagem_p1 = p1_index;
    global.personagem_p2 = p2_index;

    room_goto(rm_game);
}