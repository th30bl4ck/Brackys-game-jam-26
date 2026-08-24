if (leaving) {
    x += walk_speed;
    
    if (x > obj_ui_manager.panel_left_width + 200) {
        x = -200;          
        leaving = false;
        arrived = false;
        
        load_next_visitor(); 
    }
} else {
    if (x < target_x) {
        x += walk_speed;
    } else if (!arrived) {
        x = target_x;
        arrived = true;
        
        var table_center_x = obj_ui_manager.panel_left_width + ((room_width - obj_ui_manager.panel_left_width) / 2);
        var table_center_y = room_height / 2;
        
        var paper = instance_create_depth(table_center_x, table_center_y, -50, obj_paper);
        paper.article_text = article_text;
    }
}