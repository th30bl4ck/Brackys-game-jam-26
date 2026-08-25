show_hint = !show_hint;

if (!show_hint) {
    flash_count += 1;
}

if (flash_count < 5) {
    alarm[0] = 20;
} else {
    show_hint = false;
    instance_destroy();
}