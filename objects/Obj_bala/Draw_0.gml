draw_self()

gpu_set_blendmode(bm_add)

draw_sprite_ext(Spr_efeito_tiro,image_number,x,y,image_xscale + 1.5,image_yscale + 1.5,image_angle,c_blue,0.7)

gpu_set_blendmode(bm_normal)