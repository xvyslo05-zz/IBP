

tic();
f = @(t, y) [y(2);-y(1)];

y0 = [0  100];

t = linspace(0, 10000, 5000);

[y, tr] = ode45(f, t, y0);
disp(toc())
