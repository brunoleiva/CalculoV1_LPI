if (other.vspd < vspd){
	if(keyboard_check(vk_up)){
		vspd = -11;
	}
	else{
		vspd = -7;
	}
	
	with(other){
		hspd = 0;
		instance_change(obj_enemyDead, false);
	}
}
else{
	instance_destroy();
}