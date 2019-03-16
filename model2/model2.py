import numpy
from scipy.integrate import odeint

def model1(y, t):
    x = y
    dydt = -x
    err = x - numpy.sin(t)
    print(err)
    print(dydt)
    return dydt

y0 = 1

t = numpy.linspace(0, 20)

y = odeint(model1, y0, t)
