dragging = false;
depth = -50;

if (instance_exists(obj_ui_manager)) {
    if (bbox_left < obj_ui_manager.panel_left_width) {
        x = home_x;
        y = home_y;
    }
}