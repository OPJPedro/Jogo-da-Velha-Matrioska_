draw_self()
var _anim = sin(current_time / 1000) * 0.25;

y -= _anim;

image_angle = sin(get_timer() / 1200000) * 2.5;