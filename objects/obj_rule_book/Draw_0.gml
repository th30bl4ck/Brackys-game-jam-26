draw_self();

if (is_open) {
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1.0); 
    
    var book_x = room_width / 2;
    var book_y = room_height / 2;
    var book_scale = 10; 
    
    draw_sprite_ext(spr_book, 0, book_x, book_y, book_scale, book_scale, 0, c_white, 1);
    
    draw_set_color(c_black);
    
    var right_page_center_x = book_x + (16 * book_scale);
    var title_y = book_y - (26 * book_scale);
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_text_transformed(right_page_center_x, title_y, "RULES", 1.5, 1.5, 0);
    
    draw_set_halign(fa_left);
    var text_start_x = book_x + (8 * book_scale); 
    var text_start_y = book_y - (18 * book_scale);
    var max_text_width = (20 * book_scale);  
    
    for (var i = 0; i < array_length(rules); i++) {
        draw_text_ext(text_start_x, text_start_y + (i * 45), rules[i], 25, max_text_width);
    }
}