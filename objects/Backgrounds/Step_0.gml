/// @description PARALLAX

//Definir variáveis de camadas

var layer_id1 = layer_get_id("Foreground");
var layer_id2 = layer_get_id("Background");
var layer_id3 = layer_get_id("Skydrop");

//LERP a camada pra camera
layer_x(layer_id1, lerp(0,camera_get_view_x(view_camera[0]),.1));
layer_x(layer_id2, lerp(0,camera_get_view_x(view_camera[0]),.3));
layer_x(layer_id3, lerp(0,camera_get_view_x(view_camera[0]),.9));