model stiff_system
  Real y (start = 1);
equation
  der(y) = -50*(y - cos(time));
end stiff_system;
