/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model kruhoveho testu pro nastroj MATLAB
*/

inittime = clock;

syms x(t) y(t)

ode1 = diff(x) == y;
ode2 = diff(y) == -x;

odes=[ode1; ode2]

S = dsolve(odes)

xSol(t) = S.x
ySol(t) = S.y

cond1 = x(0) == 0;
cond2 = y(0) == 100;
conds = [cond1; cond2];
[xSol(t), ySol(t)] = dsolve(odes,conds)

endtime = clock - inittime;
disp(endtime);
%
% fplot(ySol)
% legend('ySol','Location','best')
