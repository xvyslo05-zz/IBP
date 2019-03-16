import numpy
from scipy.integrate import odeint

def model1(y, t):
    dxdt = y
    dydt = -dxdt
    err = dxdt - numpy.sin(t)
    prettyPrint(err, dxdt, dydt, t)
    return dydt

def prettyPrint(err, dxdt, dydt, t):
    print("===========")
    print("err:", err)
    print("x:", dxdt)
    print("dy:", dydt)
    print("t:", t)

y0 = 1

t = numpy.linspace(0, 20)

y = odeint(model1, y0, t)
