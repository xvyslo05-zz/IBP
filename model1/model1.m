
clear all
h_i=2; //Height in meters
v_t=10; //Terminal velocity in meters per second
g=9.8; //Acceleration due to gravity in meters per sec^2
C_R=0.9; //Coefficient of restitution



h(1)=h_i; 
b=1; //Initialize bounce number
for b=1:3 // Loop through three bounces
    //The equations in the loop come right from the
    //problem statement
    v_impact(b)=v_t*sqrt(1-exp(-2*g*h(b)/(v_t^2)));
    v_r(b)=C_R*v_impact(b)*(1-0.01*rand());
    h(b+1)=-((v_t^2)/g)*log(cos(atan(v_r(b)/v_t)));
end
sprintf('The height of the third bounce is //0.3f meters.', h(4))

disp(h(4))
