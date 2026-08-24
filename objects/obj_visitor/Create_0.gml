if (!variable_global_exists("current_visitor_index")) {
    global.current_visitor_index = 0;
}

image_xscale = 8;
image_yscale = 8;
x = -200;
target_x = obj_ui_manager.panel_left_width / 2;
y = obj_ui_manager.portrait_height / 2;
walk_speed = 4;
arrived = false;
leaving = false;
article_text = ""; 

load_next_visitor = function() {
    var my_data = global.visitor_database[global.current_visitor_index];
    
    sprite_index = my_data.sprite;
    visitor_name = my_data.name;
    dialogue = my_data.dialogue;
    article_text = my_data.article_text;
    
    global.current_visitor_index++;
    
    if (global.current_visitor_index >= array_length(global.visitor_database)) {
        global.current_visitor_index = 0;
    }
}

load_next_visitor();