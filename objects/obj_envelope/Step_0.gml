if (dragging) {
    x = mouse_x + drag_offset_x;
    y = mouse_y + drag_offset_y;
    
    var offset_left = x - bbox_left;
    var offset_right = bbox_right - x;
    var offset_top = y - bbox_top;
    var offset_bottom = bbox_bottom - y;
    
    var min_x = obj_ui_manager.panel_left_width + offset_left;
    var max_x = room_width - offset_right;
    var min_y = offset_top;
    var max_y = room_height - offset_bottom;
    
    x = clamp(x, min_x, max_x);
    y = clamp(y, min_y, max_y);
}