if (instance_exists(obj_visitor) && obj_visitor.arrived && !obj_visitor.leaving) {
    obj_visitor.leaving = true;
    obj_visitor.dialogue = "";
    
    if (instance_exists(obj_paper)) {
        instance_destroy(obj_paper);
    }
}