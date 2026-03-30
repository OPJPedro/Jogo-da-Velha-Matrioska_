// posição do knob
var knob_x = lerp(x1, x2, valor);

// barra
draw_set_color(c_gray);
draw_line(x1, y_slider, knob_x, y_slider);

// knob (bolinha)
draw_set_color(c_white);
draw_circle(knob_x, y_slider, 6, false);
