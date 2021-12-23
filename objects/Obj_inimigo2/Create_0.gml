event_inherited()

direction = irandom_range(1,359)
speed = random(2)
_npedacos = irandom_range(25,35)
vida = 10


cronometro3 = room_speed * random_range(10,15)
cronometro4 = room_speed * random_range(7,10)


if distance_to_object(Obj_player) <= 200
{
	instance_destroy(false)	
}

movimentacao = function()
{
	
	cronometro3 --;
	
	if cronometro3 <= 0
	{
		direction = irandom(359)
		speed = random(2)
		
		cronometro3 = room_speed * random_range(10,15)
	}
}

criar_ovo = function()
{
	cronometro4 --;
	
	if cronometro4 <= 0
	{
		instance_create_layer(x,y,"inimigo",Obj_ovo)
		
		cronometro4 = room_speed * random_range(7,10)
	}
		
}