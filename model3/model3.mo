model stiff_system
  Real x;
  Real y (start = 1);
equation
  der(y) = -50*(y - cos(x))
end stiff_system;
