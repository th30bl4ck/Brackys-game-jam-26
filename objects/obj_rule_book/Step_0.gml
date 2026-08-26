if (mouse_check_button_pressed(mb_left)) {
    if (is_open) {
        var book_scale = 10;
        var book_size = 64 * book_scale; 
        
        var page_left = (room_width / 2) - (book_size / 2);
        var page_top = (room_height / 2) - (book_size / 2);
        var page_right = page_left + book_size;
        var page_bottom = page_top + book_size;
        
        if (!(mouse_x >= page_left && mouse_x <= page_right && mouse_y >= page_top && mouse_y <= page_bottom)) {
            is_open = false;
            depth = -80; 
        }
    } else {
        if (position_meeting(mouse_x, mouse_y, id)) {
            is_open = true;
            depth = -250; 
        }
    }
}