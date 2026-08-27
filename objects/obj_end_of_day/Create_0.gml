depth = -200;
button_w = 250;
button_h = 60;
button_x = (room_width / 2) - (button_w / 2);
button_y = (room_height / 2) + 120;

global.money += global.daily_earnings;
global.money += global.daily_bribes; 
global.money -= global.daily_penalties;