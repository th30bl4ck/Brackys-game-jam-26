draw_self();

if (is_open) {
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1.0); 
    
    var book_x = room_width / 2;
    var book_y = room_height / 2;
    var book_scale = 10;
    
    draw_set_color(c_black);
    
    if (current_page == 1) {
        draw_sprite_ext(spr_book, 0, book_x, book_y, book_scale, book_scale, 0, c_white, 1);
        
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
        
        draw_set_halign(fa_right);
        draw_text(book_x + (28 * book_scale), book_y + (24 * book_scale), "Next ->");
        
    } else if (current_page == 2) {
        draw_sprite_ext(spr_book_2, 0, book_x, book_y, book_scale, book_scale, 0, c_white, 1);
        
        var left_page_center_x = book_x - (16 * book_scale);
        var title_y = book_y - (26 * book_scale);
        
        draw_set_halign(fa_center);
        draw_set_valign(fa_top);
        draw_text_transformed(left_page_center_x, title_y, "VALID SIGNATURES", 1.2, 1.2, 0);
        
        var sprite_x = book_x - (23 * book_scale); 
        var text_x = book_x - (12 * book_scale);  
        var sig_start_y = book_y - (10 * book_scale); 
        var y_gap = 90; 
        
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        
        draw_sprite_ext(spr_Baillie, 0, sprite_x, sig_start_y, 3, 3, 0, c_white, 1);
        draw_text(text_x, sig_start_y, "- Baillie");
        
        draw_sprite_ext(spr_Joe, 0, sprite_x, sig_start_y + y_gap, 3, 3, 0, c_white, 1);
        draw_text(text_x, sig_start_y + y_gap, "- Joe");
        
        draw_sprite_ext(spr_Myles, 0, sprite_x, sig_start_y + (y_gap * 2), 3, 3, 0, c_white, 1);
        draw_text(text_x, sig_start_y + (y_gap * 2), "- Myles");
        
        draw_sprite_ext(spr_Theo, 0, sprite_x, sig_start_y + (y_gap * 3), 3, 3, 0, c_white, 1);
        draw_text(text_x, sig_start_y + (y_gap * 3), "- Theo");
        
        draw_set_valign(fa_top);
        draw_text(book_x - (28 * book_scale), book_y + (24 * book_scale), "<- Back");
    }
}