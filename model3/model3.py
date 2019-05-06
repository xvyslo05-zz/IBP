# @TODO: model 3 python

# stiff system

from scipy.integrate import odeint
import matplotlib.pyplot as pyplot
import numpy as np
import math
import time

def stiff(y, t):
  dy = -50*(y - math.cos(x))
  return dy

# dy = -50(y - math.cos(x)) # main equation

t = np.linspace(0, 1, 5)

y0 = 1

solve = odeint(stiff, y0, t, hmax=1.974/50)

pyplot.plot(solve, t)

pyplot.show()

# (yn - y)/h = f(xn, yn) # pro h=1.974/50 a h=1.875/50
