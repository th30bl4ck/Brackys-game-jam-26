depth = -200;
button_w = 250;
button_h = 60;

button_x = (room_width / 2) - (button_w / 2);
button_y = (room_height / 2) + 130;

pay_button_x = (room_width / 2) - (button_w / 2);
pay_button_y = (room_height / 2) + 50;

wife_bill_paid = false;
bill_amount = 20;
ending_fade_active = false;
ending_fade_alpha = 0;
ending_fade_speed = 0.025;

global.money += global.daily_earnings;
global.money += global.daily_bribes;
global.money -= global.daily_penalties;
