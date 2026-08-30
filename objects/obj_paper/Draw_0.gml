draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var margin = 40; 
var max_text_width = 300; 
var line_gap = 30;

var text_w = string_width_ext(article_text, line_gap, max_text_width);
var text_h = string_height_ext(article_text, line_gap, max_text_width);

var target_w = max(text_w + (margin * 2), 200);
var target_h = max(text_h + (margin * 2), 150);

var base_w = sprite_get_width(sprite_index);
var base_h = sprite_get_height(sprite_index);

image_xscale = target_w / base_w;
image_yscale = target_h / base_h;

draw_self();

var visual_width = base_w * image_xscale;
var visual_height = base_h * image_yscale;

var true_left = x - (sprite_get_xoffset(sprite_index) * image_xscale);
var true_top = y - (sprite_get_yoffset(sprite_index) * image_yscale);

var center_x = true_left + (visual_width / 2);
var center_y = true_top + (visual_height / 2);

draw_text_ext(center_x, center_y, article_text, line_gap, max_text_width);