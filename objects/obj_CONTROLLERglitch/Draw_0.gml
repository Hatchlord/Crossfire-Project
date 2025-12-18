if (glitch_active && glitch_intensity > 0) 
{
    shader_set(shd_glitch);
    shader_set_uniform_f(u_intensity, glitch_intensity);
    shader_set_uniform_f(u_time, current_time / 1000); // Convert to seconds
    shader_set_uniform_f(u_pixelation, pixelation);
    
    // Draw the application surface (the entire game screen)
    draw_surface(application_surface, 0, 0);
    
    shader_reset();
}
