event_inherited()

speed = random(3)
direction = irandom(359)
tempo1 = room_speed * random_range(1,3)
vida = 1
_npedacos = irandom_range(10,20)


seguir_player = function()
{
	
	if instance_exists(Obj_player)
	{
		if point_distance(x,y,Obj_player.x,Obj_player.y) <= 150
		{
			direction = point_direction(x,y,Obj_player.x,Obj_player.y)
		}
		
	}
	
}









