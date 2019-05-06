inittime = cputime;

syms u(t) v(t)

ode1 = diff(u) == v;
ode2 = diff(v) == -u;

odes=[ode1; ode2]

S = dsolve(odes)

uSol(t) = S.u
vSol(t) = S.v

cond1 = u(0) == 0;
cond2 = v(0) == 1;
conds = [cond1; cond2];
[uSol(t), vSol(t)] = dsolve(odes,conds)

fplot(uSol)
hold on
fplot(vSol)
grid on
legend('uSol','vSol','Location','best')

endtime = cputime - inittime;
disp(endtime);
