draw_self()

var box_x1 = 140;
var box_y1 = 200;
var box_x2 = 500;
var box_y2 = 500;

// Margem interna da caixa
var margem = 20;

// Área útil
var tx = box_x1 + margem;
var ty = box_y1 + margem;
var largura = (box_x2 - box_x1) - margem * 2;

// Texto
draw_set_font(font_gothic_2)
draw_set_color(#333543);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext(tx, ty, texto, 18, largura);