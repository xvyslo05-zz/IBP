/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model skakajiciho micku pro nastroj MATLAB
*/

tic();
height_ini = 10;
velocity_ini = 15;
t0_ini = 0;
sampl=500;
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

    [t, res] = ode45(@(t, res) new_height(t, res), t, x0);

    for j = 1:sampl
        hcntr=hcntr+1;
        h(hcntr)=res(j,1);
        if res(j,1) <= 0
            height_ini = 0.001;
            velocity_ini = -res(j,2)*utlum;
            break
        end
    end
    endtime = endtime + t(j);
end

t = linspace(0,endtime,length(h));
disp(toc())
% plot(t,h)
