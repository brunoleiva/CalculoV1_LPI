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
	
	if(hspd != 0) image_xscale = sign(hspd);
		
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
		vspd -= 12;
	}else if place_meeting(x,y-1,obj_wall) and key_jump and grv<0{
		vspd +=12;
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

