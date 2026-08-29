if (dragging) {
    x = mouse_x + drag_offset_x;
    y = mouse_y + drag_offset_y;
    
    var offset_left = x - bbox_left;
    var offset_right = bbox_right - x;
    var offset_top = y - bbox_top;
    var offset_bottom = bbox_bottom - y;
    
    x = clamp(x, obj_ui_manager.panel_left_width + offset_left, room_width - offset_right);
    y = clamp(y, offset_top, room_height - offset_bottom);
}

if (!mouse_check_button(mb_left) && dragging) {
    dragging = false;
    depth = -55;
}