 /// @description Insert description here
/*if(keyboard_check(ord("D"))) { //Move to the right
	x += walkSpeed; //Physically moves the object the amount of walkSpeed to the right
	image_speed = walkSpeed / 3; //Moves through the frames of the playing sprite
	sprite_index = SaraWalkRight; //Assigns the walking right sprite when D is pressed
}
if(keyboard_check(ord("A"))) { //Move to the left
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = SaraWalkLeft;
}
if(keyboard_check(vk_nokey)) { //Stop animating
	image_speed = 0; //Set speed of playing frames to 0
	image_index = 0; //Set current frame to 0
	walkSpeed = 3; //Return speed to normal
}
*/
#region CONTROLES
key_right = keyboard_check(ord("D"));//DIREITA
key_left = keyboard_check(ord("A"));//ESQUERDA
key_jump = keyboard_check(vk_space);//PULA
key_invert = keyboard_check_released(ord("F"));//INVERTE GRAVIDADE
#endregion

#region MOVIMENTACAO
	var move = key_right - key_left
	hspd = move * spd;
	vspd = vspd + grv;

	
	//COLISAO HORIZONTAL
	if place_meeting(x+hspd,y,obj_wall)
	{
		while (!place_meeting(x+sign(hspd),y,obj_wall)){
			x = x + sign(hspd)
		}
		hspd = 0;
	}
	x = x + hspd;
	
	//COLISAO VERTICAL
	if place_meeting(x,y+vspd,obj_wall)
	{
		while (!place_meeting(x,y+sign(vspd),obj_wall)){
			y = y + sign(vspd)
		}
		vspd = 0;
	}
	y = y + vspd;
	

	//JUMP
	if place_meeting(x,y+1,obj_wall) and key_jump and grv>0{
		vspd -= 8;
	}else if place_meeting(x,y-1,obj_wall) and key_jump and grv<0{
		vspd +=8;
	}
	//INVERTE A GRAVIDADE
	if key_invert{
		grv = grv * (-1);
		if(image_yscale == 1){
			image_yscale = -1
		} else {
			image_yscale = 1;
		}
	}
	move_wrap(false,true,sprite_height/2)
	
#endregion

#region Sprites animados
/*if(keyboard_check(ord("A"))) {
	image_speed = sign(hspd);
	sprite_index = SaraWalkLeft;
}
if(keyboard_check(ord("D"))) {
	image_speed = sign(hspd);
	sprite_index = SaraWalkRight;
}*/
if(hspd = 0) { //Stop animating
	image_speed = 0; //Set speed of playing frames to 0
	image_index = 0; //Set current frame to 0
}
if(hspd != 0){ 
	image_xscale = sign(hspd);
	image_speed = sign(hspd);
		}
#endregion