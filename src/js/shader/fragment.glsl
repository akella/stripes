uniform float time;
uniform float offset;
uniform int back;
varying vec2 vUv;

varying vec3 vColor;
varying float vOffset;

void main()	{
	vec3 color = vColor;
	float o = fract(time/20. + vOffset/10.);

	float length = 0.3;

	if( abs(vUv.x - o)>length && abs(vUv.x - o - 1.)>length && abs(vUv.x - o + 1.)>length )  {
		discard;
	}

	
	gl_FragColor = vec4(color,1.);
	if(!gl_FrontFacing){ 
		gl_FragColor = vec4(color*0.3,1.);
	}
}