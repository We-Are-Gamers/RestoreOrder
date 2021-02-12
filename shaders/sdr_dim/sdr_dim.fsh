//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 dim = vec4(0.5, 0.5, 0.5, 1.0);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) * dim;
}
