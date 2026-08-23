// movement
var _key_right = keyboard_check(ord("D"));
var _key_left  = keyboard_check(ord("A"));
var _key_down  = keyboard_check(ord("S"));
var _key_up    = keyboard_check(ord("W"));

var _hmove = _key_right - _key_left;
var _vmove = _key_down - _key_up;

if (_hmove != 0 || _vmove != 0) {
    var _dir = point_direction(0, 0, _hmove, _vmove);
    
    x += lengthdir_x(move_speed, _dir);
    y += lengthdir_y(move_speed, _dir);
}

// talking to npcs 
var _npc = instance_nearest(x, y, obj_employee);

if (_npc != noone && point_distance(x, y, _npc.x, _npc.y) <= 64) {
    if (keyboard_check_pressed(ord("E"))) {
        if (!instance_exists(obj_dialogue)) {
            var _dialogue_box = instance_create_depth(0, 0, -99, obj_dialogue);
            _dialogue_box.dialogue_array = _npc.dialogue;
        } 
        else {
            with (obj_dialogue) {
                current_line++;
                if (current_line >= array_length(dialogue_array)) {
                    instance_destroy();
                }
            }
        }
    }
}
