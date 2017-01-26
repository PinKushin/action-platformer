///player_input()
left= keyboard_check(ord("A"));
right= keyboard_check(ord("D"));
up= keyboard_check_pressed(ord("W"));
down= keyboard_check_pressed(ord("S"));

hspd_dir= right - left;
