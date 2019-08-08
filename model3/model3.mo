/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Model tuheho systemu pro nastroje Dymola, OpenModelica a jModelica
*/

model stiff_system
  Real y (start = 1);
equation
  der(y) = -50*(y - cos(time));
end stiff_system;
