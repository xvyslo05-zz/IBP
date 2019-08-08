/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model skakajiciho micku pro nastroj FreeMat
*/

//clear;
//clc;
//close;

tic();

height_ini = 100;
velocity_ini = 30;
t0_ini = 0;
sampl=500;
hcntr=0;
endtime=100;
bounces=15;
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
disp(toc())

plot(t,h)

