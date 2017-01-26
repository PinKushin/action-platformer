/// @Movement and Collisions
// You can write your code in this editor
player_input();

if left||right {
	hspd += hspd_dir * acc;
	if abs(hspd) >= mspd {
		hspd = sign(hspd) * mspd;
	}

}else if floor(abs(hspd)) != 0 {
	hspd -= sign(hspd) * acc;
}else if floor(abs(hspd)) = 0 {
	hspd = 0;
}

///in the air
if !place_meeting(x, y + 1, osolid){
	vspd += grav;
}else if up { 
	///jump
	vspd -= 30; ///replace with var
}

//collisions
if place_meeting(x + hspd, y, osolid) {
	while !place_meeting(x + sign(hspd), y, osolid) {
		x += sign(hspd);
	}
	hspd = 0;
}

if place_meeting(x, y + vspd, osolid) {
	while !place_meeting(x, y + sign(vspd), osolid){
		y += sign(vspd);
	}
	vspd = 0;
}

///move
x += hspd;
y += vspd;