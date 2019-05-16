clear;
clc;
close;

tic();

height_ini = 10;
velocity_ini = 15;
t0_ini = 0;
sampl=300;
hcntr=0;
endtime=0;
bounces=5;
utlum=0.8;

for i = 1:bounces
    height = height_ini;
    velocity = velocity_ini;
    t0 = t0_ini;
        
    x0 = [height; velocity];
    t = linspace(0, 10, sampl);
    
    function dh = new_height(t, x)
        dh(1) = x(2)
        dh(2) = -9.81
    endfunction
    res = ode(x0, t0, t, new_height);

    for j = 1:sampl
        hcntr=hcntr+1
        h(hcntr)=res(1,j)
        if res(1,j) <= 0 then
            height_ini = 0.001;
            velocity_ini = -res(2,j)*utlum
            break
        end
    end
    endtime = endtime + t(j);
end

t = linspace(0,endtime,length(h))
toc();

plot(t,h)

