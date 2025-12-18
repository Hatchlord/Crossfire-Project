if (glitch_active) {
    glitch_timer++;
    
    // Fade out as the glitch ends
    if (glitch_timer >= glitch_duration) {
        glitch_active = false;
        glitch_intensity = 0;
        glitch_timer = 0;
    }
}