precision highp float;



uniform float time;


varying vec3 v_norm;

void main()
{
    vec3 N =normalize(v_norm) ;
    float lambert =dot(N,normalize(vec3(0.1,1,0.1)))*0.5+0.5 ;
   

    gl_FragColor=vec4(min((lambert*time)+0.3,0.8),0.0,0.0,1.0);

}