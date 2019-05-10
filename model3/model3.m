inittime = clock;

tspan = [0 2];

y0 = 1;

[t,y] = ode15s(@(t,y) -10*(y - cos(t)), tspan, y0);

plot(t, y)
legend('y', 'Location', 'best')

endtime = clock - inittime;
disp(endtime);
