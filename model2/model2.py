import numpy
from scipy.integrate import quad
from scipy.integrate import odeint


def model1(y, t):
    dxdt = y # x' = y
    x = dxdt
    x = quad(integrand, 0, 1)
    dydt = -x[0] # y' = x
    err = x[0] - numpy.sin(t)
    prettyPrint(err, x[0], dxdt, dydt, t)
    return dydt


def integrand(x):
    return x


def prettyPrint(err, x, dxdt, dydt, t):
    print("===========")
    print("err:", err)
    print("x:", x)
    print("dx:", dxdt)
    print("dy:", dydt)
    print("t:", t)


y0 = 1

t = numpy.linspace(0, 20)

y = odeint(model1, y0, t)
