draw_self()
var ctrl = instance_find(obj_sel_control, 0);
var anim = sin(current_time / 100) * 2;
var cx = x;
var cy = y;

var w = sprite_width;
var h = sprite_height;

// alpha oscilando
var alpha = 0.5 + 0.5 * sin(current_time / 100);

// P1
if (ctrl.p1_ready && selecao_per == ctrl.p1_index)
{
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, alpha);
}
// P2
else if (ctrl.p2_ready && selecao_per == ctrl.p2_index)
{
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, alpha);
}
else
{
    draw_sprite(sprite_index, 0, x, y);
}

draw_set_color(c_black);
draw_rectangle(cx - w/2, cy - h/2, cx + w/2, cy + h/2, true);


// destaque P1
if (selecao_per == ctrl.p1_index)
{
    draw_set_color(c_red);
    draw_sprite(spr_cursor1, 0, x - 34 - anim, y - 34 - anim);
    if keyboard_check_pressed(ord("Q")) {image_alpha = .2}
}

// destaque P2
if (selecao_per == ctrl.p2_index)
{
    draw_set_color(c_blue);
    draw_sprite(spr_cursor2, 0, x + 34 + anim, y + 34 + anim);
    if keyboard_check_pressed(vk_backspace) {image_alpha = .2}
}

draw_set_color(c_white);
