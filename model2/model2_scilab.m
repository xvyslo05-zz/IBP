/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model kruhoveho testu pro nastroj Scilab
*/

tic();

function [dx] = fun1 (t, x)
    dx=[x(2)
        -x(1)];
endfunction

t = linspace(0, 10, 500);

y0 = [0;1];
t0 = 0;

g = ode(y0, t0, t, fun1);

//disp(g)

disp(toc())

//plot(t, g)
