/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model tuheho systemu pro nastroj MATLAB
*/

tic();
y0 = 1;

t = linspace(0, 1, 21);

function xdot = stiff(y, t)
  xdot(1) = -50*(y-cos(t));
endfunction

y = lsode("stiff", y0, t);
t =  toc();

display(t)
