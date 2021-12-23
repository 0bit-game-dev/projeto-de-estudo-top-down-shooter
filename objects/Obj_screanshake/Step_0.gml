view_xport[0] = irandom_range(-global.shake,global.shake)
view_yport[0] = irandom_range(-global.shake,global.shake)

if global.shake > 0
{
	global.shake *= global.temposhake;
	
	if (global.shake <= 0.1) global.shake = 0;
}