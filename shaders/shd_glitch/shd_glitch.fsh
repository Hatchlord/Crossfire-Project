varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_intensity;      // 0.0 to 1.0 - controls glitch strength
uniform float u_time;            // Time value for animation
uniform float u_pixelation;      // 0.0 (clear) to 1.0 (very pixelated)

// Simple pseudo-random function
float rand(vec2 co) {
    return fract(sin(dot(co.xy, vec2(12.9898, 78.233))) * 43758.5453);
}

void main() {
    vec2 uv = v_vTexcoord;
    
    // Pixelation effect
    if (u_pixelation > 0.0) {
        float pixelSize = mix(1.0, 32.0, u_pixelation);
        uv = floor(uv * (1.0 / pixelSize)) * pixelSize;
    }
    
    // Chromatic aberration (RGB split)
    float aberration = u_intensity * 0.02;
    float offset = rand(vec2(u_time, 0.0)) * aberration;
    
    // Sample each color channel at slightly different positions
    float r = texture2D(gm_BaseTexture, uv + vec2(offset, 0.0)).r;
    float g = texture2D(gm_BaseTexture, uv).g;
    float b = texture2D(gm_BaseTexture, uv - vec2(offset, 0.0)).b;
    
    // Horizontal glitch lines
    float glitchLine = step(0.98, rand(vec2(floor(uv.y * 100.0), floor(u_time * 10.0))));
    float horizontalShift = glitchLine * (rand(vec2(u_time, uv.y)) - 0.5) * 0.1 * u_intensity;
    
    // Apply horizontal shift
    if (horizontalShift != 0.0) {
        vec2 glitchedUV = vec2(uv.x + horizontalShift, uv.y);
        r = texture2D(gm_BaseTexture, glitchedUV + vec2(offset, 0.0)).r;
        g = texture2D(gm_BaseTexture, glitchedUV).g;
        b = texture2D(gm_BaseTexture, glitchedUV - vec2(offset, 0.0)).b;
    }
    
    vec4 finalColor = vec4(r, g, b, 1.0);
    
    // Apply color tint
    gl_FragColor = v_vColour * finalColor;
}