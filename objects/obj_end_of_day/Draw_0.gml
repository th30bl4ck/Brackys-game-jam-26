draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1.0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_transformed(room_width / 2, room_height / 2 - 120, "SHIFT COMPLETE", 2, 2, 0);
draw_text(room_width / 2, room_height / 2 - 50, "Earnings: +$" + string(global.daily_earnings));
draw_text(room_width / 2, room_height / 2 - 20, "Bribes Pocketed: +$" + string(global.daily_bribes));
draw_text(room_width / 2, room_height / 2 + 10, "Penalties: -$" + string(global.daily_penalties));
draw_text(room_width / 2, room_height / 2 + 60, "TOTAL MONEY: $" + string(global.money));

draw_set_color(make_color_rgb(0, 150, 0)); 
draw_rectangle(button_x, button_y, button_x + button_w, button_y + button_h, false);

draw_set_color(c_white);
draw_text(room_width / 2, button_y + (button_h / 2), "START NEXT DAY");