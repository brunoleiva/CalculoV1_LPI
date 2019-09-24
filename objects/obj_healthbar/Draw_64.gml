
draw_self()

if !instance_exists(obj_sara) exit;
draw_hp = lerp(draw_hp,obj_sara.hp, .25)

draw_set_color(c_red)
draw_rectangle(x+4,y+4,x+123*draw_hp/obj_sara.max_health,y+11,false)
draw_set_color(c_white)

