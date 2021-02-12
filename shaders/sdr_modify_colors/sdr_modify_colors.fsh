//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_vModifier;

void main()
{
	vec4 new_texture = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	if(new_texture.xyz == vec3(1.0, 1.0, 1.0)) {
		if(u_vModifier.x == 1.0) {
			new_texture.yz = vec2(0.0, 0.0);
		}
		if(u_vModifier.y == 1.0) {
			new_texture.xz = vec2(0.0, 0.0);
		}
		if(u_vModifier.z == 1.0) {
			new_texture.xy = vec2(0.0, 0.0);
		}
	}
	if(new_texture.xyz == vec3(0.0, 0.0, 0.0)) {
		if(u_vModifier.x == 1.0) {
			new_texture.x = 0.25;
		}
		if(u_vModifier.y == 1.0) {
			new_texture.y = 0.25;
		}
		if(u_vModifier.z == 1.0) {
			new_texture.z = 0.25;
		}
	}
    gl_FragColor = new_texture;//u_vTargetable * texture2D( gm_BaseTexture, v_vTexcoord );
}
