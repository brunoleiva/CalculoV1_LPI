//if(done == 0){
	
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
			if(vspd > 0){
				done = 1;
			}
			while (!place_meeting(x,y+sign(vspd),obj_wall)){
				y = y + sign(vspd)
			}
			vspd = 0;
		}
		y = y + vspd;
//}