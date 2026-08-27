if (mouse_check_button_pressed(mb_left)) {
    if (is_open) {
        var book_scale = 10;
        var book_size = 64 * book_scale; 
        
        var book_x = room_width / 2;
        var book_y = room_height / 2;
        
        var page_left = book_x - (book_size / 2);
        var page_top = book_y - (book_size / 2);
        var page_right = book_x + (book_size / 2);
        var page_bottom = book_y + (book_size / 2);
        
        var next_btn_x = book_x + (28 * book_scale); 
        var next_btn_y = book_y + (24 * book_scale);
        
        var prev_btn_x = book_x - (28 * book_scale); 
        var prev_btn_y = book_y + (24 * book_scale);
        
        var clicked_next = (current_page == 1 && mouse_x > next_btn_x - 120 && mouse_x < next_btn_x + 20 && mouse_y > next_btn_y - 10 && mouse_y < next_btn_y + 40);
        var clicked_prev = (current_page == 2 && mouse_x > prev_btn_x - 20 && mouse_x < prev_btn_x + 120 && mouse_y > prev_btn_y - 10 && mouse_y < prev_btn_y + 40);

        if (clicked_next) {
            current_page = 2;
        } else if (clicked_prev) {
            current_page = 1;
        } else if (!(mouse_x >= page_left && mouse_x <= page_right && mouse_y >= page_top && mouse_y <= page_bottom)) {
            is_open = false;
            current_page = 1; 
            depth = -80; 
        }
    } else {
        if (position_meeting(mouse_x, mouse_y, id)) {
            is_open = true;
            depth = -250; 
        }
    }
}