/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model kruhoveho testu pro nastroj Octave
*/

tic();
t = linspace(0, 10, 500);

y0 = [0;1];

y = lsode("modmod2", y0, t);

toc()
