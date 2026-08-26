if (leaving) {
    x += walk_speed;
    if (x > obj_ui_manager.panel_left_width + 200) {
        x = -200;
        leaving = false;
        arrived = false;
        
        if (global.visitors_seen >= 5) {
            instance_create_depth(0, 0, -200, obj_end_of_day);
            instance_deactivate_object(obj_visitor); 
        } else {
            load_next_visitor(); 
        }
    }
} else {
    if (x < target_x) {
        x += walk_speed;
    } 
    else if (!arrived) {
    x = target_x;
    arrived = true;

    var table_center_x = obj_ui_manager.panel_left_width + ((room_width - obj_ui_manager.panel_left_width) / 2);
    var table_center_y = room_height / 2;

    var paper = instance_create_depth(table_center_x, table_center_y, -50, obj_paper);
    paper.article_text = article_text;
    
    if (has_certificate) {
    var cert = instance_create_depth(table_center_x + 50, table_center_y + 50, -55, obj_certificate);
    
    if (is_stamped) {
        cert.sprite_index = spr_certificate_stamp; 
    } else {
        cert.sprite_index = spr_certificate_no_stamp;
    }
}
    }
}