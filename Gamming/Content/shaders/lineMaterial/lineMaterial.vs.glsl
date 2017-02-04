uniform float distance[ 5 ];
uniform vec3 positions[ 5 ];
varying  float  v_color;
void main()
{


     vec4 mPosition = modelMatrix * vec4( 0.0,0.0,0.0, 1.0 );
     vec3 v_pos =  vec3( mPosition.x,0.0,mPosition.z );

     float color =0.0;
     float minDist =200.0;
     for(int j = 0; j < 5; j++)
     {

          float length = length(v_pos-positions[j]);
          float dist = abs(length-distance[j]);
          minDist=min(length,minDist);
          color =max(1.0 -(clamp(dist,0.0,3.0)/3.0),color);
      }

     float distFactor =smoothstep(0.0,0.2,1.0-minDist/20.0);

     v_color  = color*distFactor;
     vec3 pos = position +normal*0.01;
     vec4 mvPosition = modelViewMatrix * vec4( pos, 1.0 );
     gl_Position = projectionMatrix * mvPosition;
}