var top_item = id;
var top_depth = depth;

with (obj_paper) {
    if (position_meeting(mouse_x, mouse_y, id) && depth < top_depth) {
        top_item = id;
        top_depth = depth;
    }
}

if (instance_exists(obj_certificate)) {
    with (obj_certificate) {
        if (position_meeting(mouse_x, mouse_y, id) && depth < top_depth) {
            top_item = id;
            top_depth = depth;
        }
    }
}

if (top_item == id) {
    dragging = true;
    drag_offset_x = x - mouse_x;
    drag_offset_y = y - mouse_y;
    
    depth = -65; 
}