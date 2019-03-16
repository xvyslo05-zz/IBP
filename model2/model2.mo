model kruhovy_test
  Real x;
  Real y(start=1); // pocatecni podminka
  Real err;
equation
  der(x) = y;      // x' = y
  der(y) = -x;     // y' = -x
  err = x-sin(time);
  annotation (experiment(StopTime=20, NumberOfIntervals=5000));
end kruhovy_test;
