speed = random(2)
direction = irandom(359)
tempo1 = room_speed * random_range(1,4)
vida = 1
_npedacos = irandom_range(10,20)
dano_inimigo = irandom_range(1,3)

sai_da_sala_n_mano = function()
{
	if (x + sprite_width / 2 > room_width or x - sprite_width / 2 < 0 ) hspeed *= -1;

	if ( y - sprite_height / 2 < 0) vspeed *= -1

	if ( y + sprite_height / 2 > room_height) vspeed *= -1	
	
}

mudar_de_direcao = function()
{
	tempo1 --;
	
	if tempo1 <= 0 
	{
		speed = random(2)
		direction = irandom_range(1,359)
		
		tempo1 = room_speed * random_range(1,4)
	}
		
}

efeito_de_explosao = function()
{
	repeat(_npedacos)	
	{
		
		instance_create_layer(x,y,layer,Obj_pedacos)
		
	}	
}


perde_vida = function(_dano)
{
	if _dano == undefined
	{
		_dano = 1;	
	}
	
	vida -= _dano
	
	if vida <= 0
	{
		global.shake = 15
		global.temposhake = 0.97
		instance_create_layer(x,y,"inimigo",Obj_rastro)
		efeito_de_explosao()
		instance_destroy()	
	}
	
}

