randomize()

var room_randomx = irandom_range(64,room_width - 64)
var room_randomy = irandom_range(64,room_height - 64)



if !instance_exists(Obj_player)
{
	instance_create_layer(room_randomx,room_randomy,"player",Obj_player)
		
}

if !instance_exists(Obj_screanshake)
{
	instance_create_layer(0,0,layer,Obj_screanshake)	
}

repeat(irandom(35))
{
	room_randomx = irandom_range(64,room_width - 64)
	room_randomy = irandom_range(64,room_height - 64)	
	
	instance_create_layer(room_randomx,room_randomy,"inimigo",Obj_inimigo2)
	
}

