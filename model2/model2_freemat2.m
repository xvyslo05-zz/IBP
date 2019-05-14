tic();
f = @(t, y) [y(2);-y(1)];

y0 = [0  1];

t = linspace(0, 10, 500);

[y, tr] = ode45(f, t, y0);
disp(toc())
