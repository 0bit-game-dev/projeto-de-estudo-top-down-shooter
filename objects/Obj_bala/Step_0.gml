cronometro2 --;

image_yscale = lerp(image_yscale,0.5,0.2)
image_xscale = lerp(image_xscale,0.5,0.2)

//destruindo tiro depois de 6 segundos
if (cronometro2 <= 0) instance_destroy();

colidindo_com_inimigo()