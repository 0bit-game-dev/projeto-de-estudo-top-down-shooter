speed = 8

direction = point_direction(x,y,mouse_x,mouse_y)

image_xscale = 1.5;
image_yscale = 1.5;

dano = irandom_range(1,2)

cronometro2 = room_speed * 6

colidindo_com_inimigo = function()
{
	var inimigo = instance_place(x,y,Obj_inimigo_pai)
	
	if (inimigo)
	{
		global.shake = 3
		global.temposhake = 0.9
		inimigo.perde_vida(dano)
		instance_create_layer(x,y,layer,Obj_impacto)
		instance_destroy()
		
	}
	
}