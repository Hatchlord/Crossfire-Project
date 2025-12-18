glitch_active = false;
glitch_intensity = 0;
glitch_duration = 0;
glitch_timer = 0;
pixelation = 0;

u_intensity = shader_get_uniform(shd_glitch, "u_intensity");
u_time = shader_get_uniform(shd_glitch, "u_time");
u_pixelation = shader_get_uniform(shd_glitch, "u_pixelation");
