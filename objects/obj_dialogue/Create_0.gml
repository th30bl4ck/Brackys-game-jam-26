dialogue_array = [];
current_line = 0;

if (array_length(dialogue_array) == 0 && !instance_exists(obj_player)) {
    instance_destroy(); 
}