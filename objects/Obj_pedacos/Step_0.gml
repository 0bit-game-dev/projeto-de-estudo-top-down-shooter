image_alpha -= 0.01
speed *= 0.92

if image_alpha <= 0
{
	instance_destroy()
}