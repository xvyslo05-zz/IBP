import numpy
from scipy.integrate import odeint

def model1(y, t):
    x = y
    dydt = -x
    err = x - numpy.sin(t)
    giveResults(err, x, y, t)
    return dydt

def giveResults(err, x, y, t):
    print("===========")
    print("err:", err)
    print("x:", x)
    print("y:", y)
    print("t:", t)

y0 = 1

t = numpy.linspace(0, 20)

y = odeint(model1, y0, t)

