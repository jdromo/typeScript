varying vec3 v_norm;


void main()
{
     vec4 mvPosition = modelViewMatrix * vec4( position, 1.0 );
     v_norm = normalMatrix * normal;
     vec4 mPosition = modelMatrix * vec4( position, 1.0 );

     gl_Position = projectionMatrix * mvPosition;
}