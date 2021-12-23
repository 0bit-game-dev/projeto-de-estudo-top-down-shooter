velocidade = 5
velv = 0
velh = 0

vida = 5

valor_alpha = 0.04
image_alpha = valor_alpha;

cronometro = 0
cronometro5 = 0

invencivel = false;

andando = function()
{

	//sistema de movimentaçao
	
	var up,down,right,left

	up = keyboard_check(ord("W"))
	down = keyboard_check(ord("S"))
	right = keyboard_check(ord("D"))
	left = keyboard_check(ord("A"))

	velv = (down - up) * velocidade
	velh = (right - left) * velocidade

	x += velh
	y += velv	
	
	
// troca de spritres 
if velh != 0 or velv != 0 
{
	image_speed = 1
}
else
{
	image_speed = 0	
}

}


atirando = function()
{
	
	var shoot = mouse_check_button(mb_left)
	
	//fazendo o player olhar para o mouse
	image_angle = point_direction(x,y,mouse_x,mouse_y)	
	
	if cronometro > 0
	{

		cronometro --;
	}
	else if shoot and cronometro <= 0
	{
		sprite_index = Spr_player_tiro;
		
		instance_create_layer(x + 10,y + 15,"shoot",Obj_bala)
		
		cronometro = 20
	}
	else
	{
		sprite_index = Spr_player_andando	
	}
	
}

colidindo = function()
{
	var colidindo_inimigo = instance_place(x,y,Obj_inimigo_pai)
	
	if (colidindo_inimigo) and invencivel == false
	{
		
		vida -= colidindo_inimigo.dano_inimigo;
		
		
		cronometro5 = room_speed * 2
		invencivel = true
		
	}
	
	if vida <= 0 
	{
		
		instance_destroy()
		room_restart()
	}
	
	
	
}


invencivelp = function()
{
	
	if cronometro5 <= 0
	{
		invencivel = false
		image_alpha = 1
	}
	else
	{
		
		cronometro5 --;
		invencivel = true	
		
		image_alpha += valor_alpha
		
		if image_alpha > 1 or image_alpha < 0
		{
			
			valor_alpha *= -1
			
		}
		
	}
	
}


