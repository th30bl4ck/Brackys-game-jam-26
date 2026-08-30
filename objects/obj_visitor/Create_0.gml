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
    
    if (global.current_visitor_index >= array_length(global.visitor_database)) {
        return; 
    }
    
    var my_data = global.visitor_database[global.current_visitor_index];
    
    sprite_index = my_data.sprite;
    visitor_name = my_data.name;
    dialogue = my_data.dialogue;
    article_text = my_data.article_text;
    has_certificate = my_data.has_certificate;
    is_stamped = my_data.is_stamped;
    cert_sprite = my_data.cert_sprite;
    is_forged = my_data.is_forged;
    is_tutorial = my_data.is_tutorial;
    karma_impact = my_data.karma_impact;
    
    dialogue_yes = my_data.dialogue_yes;
    dialogue_no = my_data.dialogue_no;
    
    has_bribe = my_data.has_bribe;
    if (has_bribe) {
        bribe_amount = my_data.bribe_amount;
    } 
    else {
        bribe_amount = 0;
    }
    
    global.current_visitor_index++;
}

load_next_visitor();
