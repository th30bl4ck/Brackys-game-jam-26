draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text_transformed(room_width / 2, room_height / 2 - 120, "SHIFT COMPLETE", 2, 2, 0);
draw_text(room_width / 2, room_height / 2 - 50, "Earnings: +$" + string(global.daily_earnings));
draw_text(room_width / 2, room_height / 2 - 20, "Bribes Pocketed: +$" + string(global.daily_bribes));
draw_text(room_width / 2, room_height / 2 + 10, "Penalties: -$" + string(global.daily_penalties));

draw_text(room_width / 2, room_height / 2 + 30, "TOTAL MONEY: $" + string(global.money));

if (!wife_bill_paid) {
    if (global.money >= bill_amount) {
        draw_set_color(make_color_rgb(0, 150, 0)); 
    } else {
        draw_set_color(make_color_rgb(80, 80, 80)); 
    }
    draw_rectangle(pay_button_x, pay_button_y, pay_button_x + button_w, pay_button_y + button_h, false);
    
    draw_set_color(c_white);
    draw_text(pay_button_x + (button_w / 2), pay_button_y + (button_h / 2), "Pay Bill ($" + string(bill_amount) + ")");
} else {
    draw_set_color(c_yellow);
    draw_text(room_width / 2, pay_button_y + (button_h / 2), "Hospital Bill Paid!");
}

draw_set_color(make_color_rgb(0, 180, 0));
draw_rectangle(button_x, button_y, button_x + button_w, button_y + button_h, false);
draw_set_color(c_white);
draw_text(button_x + (button_w / 2), button_y + (button_h / 2), "START NEXT DAY");