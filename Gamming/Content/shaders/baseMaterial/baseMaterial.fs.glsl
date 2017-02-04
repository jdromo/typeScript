precision highp float;

const float lambertfactor= 0.3;


uniform float distance[ 5 ];
uniform vec3 positions[ 5 ];
varying vec3 v_pos;
varying vec3 v_norm;

void main()
{
    vec3 N =normalize(v_norm) ;
    float lambert =dot(N,normalize(vec3(0.1,1,0.1)))*0.5+0.5 ;
    float color =0.0;
    float minDist =100.0;
    for(int j = 0; j < 5; j++)
    {
         float length = length(v_pos-positions[j]) ;
         float dist = abs(length-distance[j]) ;
         minDist=min(length,minDist);
         color =max(1.0 -clamp(dist,0.0,4.0)/4.0,color);


     }

    float distFactor =smoothstep(0.0,0.2,1.0-minDist/20.0);
    float colorF =(color*0.2 +pow(color,20.0)*0.2 )*lambert;
    gl_FragColor=vec4((colorF+pow(color,260.0))*distFactor,colorF*0.2*distFactor,colorF*0.2*distFactor,1.0);

    //gl_FragColor+=vec4(lambert*lambertfactor,lambert*lambertfactor,lambert*lambertfactor,1.0);

}