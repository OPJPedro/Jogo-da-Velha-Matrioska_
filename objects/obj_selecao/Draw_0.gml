draw_self()
var ctrl = instance_find(obj_sel_control, 0);

// destaque P1
if (selecao_per == ctrl.p1_index)
{
    draw_set_color(c_red);
    draw_sprite(spr_cursor1, 0, x - 30, y - 30);
	if keyboard_check(ord("F")) {image_alpha = 1}
	if keyboard_check(ord("Q")) {image_alpha = .2}
}

// destaque P2
if (selecao_per == ctrl.p2_index)
{
    draw_set_color(c_blue);
    draw_sprite(spr_cursor2, 0, x + 30, y + 30);
	if keyboard_check(vk_enter) {image_alpha = 1}
	if keyboard_check(vk_backspace) {image_alpha = .2}
}

draw_set_color(c_white);