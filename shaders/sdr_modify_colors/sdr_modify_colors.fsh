//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_vModifier;
uniform vec2 u_vPosition;

void main()
{
	vec4 new_texture = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	float position = gl_FragCoord.y - (u_vPosition.y - 10.0);
	if((4.0 >= position && position >= 0.0) || (10.0 >= position && position >= 6.0)) {
		new_texture = u_vModifier;
	}
    gl_FragColor = new_texture;
}
