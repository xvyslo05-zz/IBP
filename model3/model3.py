# @TODO: model 3 python

# stiff system

from scipy.integrate import odeint
import matplotlib.pyplot as pyplot
# import numpy as np
import math
# import time

# def stiff(y, t):
#   dy = -50*(y - math.cos(x))
#   return dy

# # dy = -50(y - math.cos(x)) # main equation

# t = np.linspace(0, 1, 5)

# y0 = 1

# solve = odeint(stiff, y0, t, hmax=1.974/50)

# pyplot.plot(solve, t)

# pyplot.show()

# # (yn - y)/h = f(xn, yn) # pro h=1.974/50 a h=1.875/50

from scipy.integrate import ode

y0, t0 = 0, 0

def f(t, y, arg1):
    return -50*(y - math.cos(t))


r = ode(f).set_integrator('zvode', method='bdf', min_step=1.974/50, max_step=1.974/50)
r.set_initial_value(y0, t0).set_f_params(2.0)
t1 = 1000
dt = 1
while r.successful() and r.t < t1:
    print(r.t+dt, r.integrate(r.t+dt))

pyplot.plot(r.t)
pyplot.show()
