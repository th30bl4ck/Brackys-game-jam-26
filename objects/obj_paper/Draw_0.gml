draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

var center_x = (bbox_left + bbox_right) / 2;
var center_y = (bbox_top + bbox_bottom) / 2;
var text_width = (bbox_right - bbox_left) - 20;

draw_text_ext(center_x, center_y, article_text, 20, text_width);