//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 get_colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    
    float average = (get_colour.r + get_colour.g + get_colour.b) / 3.0;
    
    vec4 new_colour = vec4(average, average, average, get_colour.a);
    
    gl_FragColor = new_colour;
}
