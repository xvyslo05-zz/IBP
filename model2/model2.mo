model kruhovy_test
  Real x;
  Real y(start=1); // pocatecni podminka
  Real err;
equation
  der(x) = y;      // x' = y
  der(y) = -x;     // y' = -x
  annotation (experiment(StopTime=10, NumberOfIntervals=500));
end kruhovy_test;
