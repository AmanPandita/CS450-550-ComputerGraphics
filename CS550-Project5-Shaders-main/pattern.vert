#version 120

uniform float	uTime;
varying  vec2  vST;		// texture coords
varying  vec3  vN;		// normal vector
varying  vec3  vL;		// vector from point to light
varying  vec3  vE;		// vector from point to eye

vec3 LightPosition = vec3(  0., 5., 5. );

const float AMP = 0.2;
const float PI = 3.14159265;
const float W = 2.;

/*
varying vec2  	vST;		// texture coords
uniform float uA, uB;

const float PI = 	3.14159265;
const float AMP = 	2.;		// amplitude
const float W = 	3.;		// frequency
*/

void
main( )
{

	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	vec3 norm = normalize( vert );
	vert += 2 * AMP * norm * sin( 2.*PI*W*(uTime-vST.s) ) * sin( 2.*PI*W*(uTime-vST.t) );
	vec4 ECposition = gl_ModelViewMatrix * vec4( vert, 1. );
	vN = normalize( gl_NormalMatrix * gl_Normal );	// normal vector
	vL = LightPosition - ECposition.xyz;		// vector from the point
							// to the light position
	vE = vec3( 0., 0., 0. ) - ECposition.xyz;		// vector from the point
							// to the eye position 
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );

	/*
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	if( vert.x > 1.)
		vert.x += 3.*(vert.x-1.)*uA;
	else if( vert.x < -1.)
		vert.x += 3.*(vert.x+1.)*uA;

	if( vert.y > 1.)
		vert.y += 3.*(vert.y-1.)*uA;
	else if( vert.y < -1.)
		vert.y += 3.*(vert.y+1.)*uA;

	if( vert.z > 1.)
		vert.z += 3.*(vert.z-1.)*uA;
	else if( vert.z < -1.)
		vert.z += 3.*(vert.z+1.)*uA;
	gl_Position = gl_ModelViewProjectionMatrix * vec4(vert, 1.);
	*/
}
