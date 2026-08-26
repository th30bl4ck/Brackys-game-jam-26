// Detect when the animation loops
if (image_index < last_image) {
    loop_count++;
}

last_image = image_index;


// First 50 loops: normal speed
if (loop_count < 50) {
    image_speed = 1;
}
// Next 50 loops: gradually slow down
else if (loop_count < 100) {
    var progress = (loop_count - 50) / 50;
    image_speed = 1 - progress;
}
// Finished
else {
    image_speed = 0;
    image_index = 5;
}