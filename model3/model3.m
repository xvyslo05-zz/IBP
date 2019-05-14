tic();

tspan = [0 2];

y0 = 1;

[t,y] = ode15s(@(t,y) -50*(y - cos(t)), tspan, y0);

toc();
