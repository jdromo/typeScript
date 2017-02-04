varying vec3 v_norm;
varying vec3 v_pos;

void main()
{
     vec4 mvPosition = modelViewMatrix * vec4( position, 1.0 );
     v_norm = normalMatrix * normal;
     vec4 mPosition = modelMatrix * vec4( position, 1.0 );
     v_pos =  vec3( mPosition.x,mPosition.y,mPosition.z );
     gl_Position = projectionMatrix * mvPosition;
}