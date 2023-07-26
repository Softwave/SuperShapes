shader_type spatial;
render_mode unshaded;

uniform float _M1 = 8.0;
uniform float _N11 = 60.0;
uniform float _N12 = 100.0;
uniform float _N13 = 30.0;
uniform float _A1 = 1.0;
uniform float _B1 = 1.0;

uniform float _M2 = 2.0;
uniform float _N21 = 10.0;
uniform float _N22 = 10.0;
uniform float _N23 = 10.0;
uniform float _A2 = 1.0;
uniform float _B2 = 1.0;

float SuperFormula(float phi, float m, float n1, float n2, float n3, float a, float b)
{
	float t1 = abs((1.0 / a) * cos(m * phi / 4.0));
	t1 = pow(t1, n2);
	
	float t2 = abs((a / b) * sin(m * phi / 4.0));
	t2 = pow(t2, n3);
			
	float t3 = t1 + t2;
			
	float r = pow(t3, -1.0 / n1);
			
	return r;
}

float ss(vec3 p)
{
	float d = length(p);
			
	float theta = atan(p.y / p.x);
	float phi = asin(p.z / d);
			
	//float r1=SuperFormula(theta, 8.0, 60.0, 100.0, 30.0, 1.0, 1.0);
	//float r2=SuperFormula(phi, 2.0, 10.0, 10.0, 10.0, 1.0, 1.0);
	float r1=SuperFormula(theta, _M1, _N11, _N12, _N13, _A1, _B1);
	float r2=SuperFormula(phi,   _M2, _N21, _N22, _N23, _A2, _B2);
			  
	vec3 q = r2 * vec3(r1 * cos(theta) * cos(phi), r1 * sin(theta) * cos(phi), sin(phi));
	d = d + length(q);
	
			
	return d;
}

void vertex()
{
	vec4 world_vertex = (INV_CAMERA_MATRIX * vec4(VERTEX, 1.0));
    vec3 normal = normalize(world_vertex.xyz - (INV_CAMERA_MATRIX * vec4(0.0, 0.0, 0.0, 1.0)).xyz);
    VERTEX += normal * ss(VERTEX);
}

void fragment()
{
	//ALBEDO = NORMAL.xyz * 0.5 + 0.5;
	ALBEDO = NORMAL.xyz * 0.5 + 0.5;

    // Clamp ALBEDO to stay within [0, 1]
    ALBEDO = clamp(ALBEDO, vec3(0.0), vec3(1.0));
}