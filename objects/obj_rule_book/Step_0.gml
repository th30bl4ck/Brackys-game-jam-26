if (mouse_check_button_pressed(mb_left)) {
    if (is_open) {
        var page_w = 700;
        var page_h = 500;
        var page_x = (room_width / 2) - (page_w / 2);
        var page_y = (room_height / 2) - (page_h / 2);
        
        if (!(mouse_x >= page_x && mouse_x <= page_x + page_w && mouse_y >= page_y && mouse_y <= page_y + page_h)) {
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