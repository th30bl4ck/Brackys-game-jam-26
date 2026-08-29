draw_self();

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var text_scale = 0.8; 
var line_spacing = 35; 
var margin = 20; 

var paper_on_screen_width = bbox_right - bbox_left;
var allowed_text_width = paper_on_screen_width - (margin * 2);
var wrap_width = allowed_text_width / text_scale;

draw_text_ext_transformed(bbox_left + margin, bbox_top + margin, letter_text, line_spacing, wrap_width, text_scale, text_scale, 0);